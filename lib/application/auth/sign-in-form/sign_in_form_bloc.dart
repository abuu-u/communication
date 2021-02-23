import 'dart:async';
import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:communication/application/bloc/locale_bloc.dart';
import 'package:communication/domain/auth/auth_failure.dart';
import 'package:communication/domain/auth/i_auth_facade.dart';
import 'package:communication/domain/auth/value_objects.dart';
import 'package:communication/domain/core/value_objects.dart';
import 'package:communication/generated/l10n.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';
part 'sign_in_form_bloc.freezed.dart';

@injectable
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final IAuthFacade _authFacade;
  final LocaleBloc _localeBloc;

  SignInFormBloc(
    this._authFacade,
    this._localeBloc,
  ) : super(SignInFormState.initial()) {
    _localeBloc.listen((state) {
      SignInFormEvent.appLanguageChanged(state.locale);
    });
  }

  @override
  Stream<SignInFormState> mapEventToState(
    SignInFormEvent event,
  ) async* {
    yield* event.map(
      appLanguageChanged: (e) async* {
        yield state.copyWith(
          appLanguage: AppLanguage(e.appLanguage),
          authFailureOrSuccessOption: none(),
        );
      },
      nameChanged: (e) async* {
        yield state.copyWith(
          name: Name(e.nameStr),
          authFailureOrSuccessOption: none(),
        );
      },
      birthDateChanged: (e) async* {
        yield state.copyWith(
          birthDate: BirthDate(e.birthDateStr),
          authFailureOrSuccessOption: none(),
        );
      },
      cityChanged: (e) async* {
        yield state.copyWith(
          city: City(e.cityStr),
          authFailureOrSuccessOption: none(),
        );
      },
      phoneNumberChanged: (e) async* {
        final verifiedNumber = await _authFacade.getVerifiedNumber();

        yield state.copyWith(
          isNumberVerified: PhoneNumber.countryCode + e.phoneNumberStr ==
              verifiedNumber.getOrElse(() => null),
          phoneNumber: PhoneNumber(e.phoneNumberStr),
          authFailureOrSuccessOption: none(),
        );
      },
      verifyNumberPressed: (e) async* {
        if (state.phoneNumber.isValid()) {
          yield state.copyWith(
            isNumberSubmitting: true,
          );

          yield* _mapVerifyPhoneToState(e);
        }

        yield state.copyWith(
          showNumberErrorMessages: true,
        );
      },
      verificationCompleted: (e) async* {
        await _authFacade.verifyNumber(credential: e.credential);

        yield state.copyWith(
          isNumberVerified: true,
          isNumberSubmitting: false,
          isCodeSent: false,
          authFailureOrSuccessOption: none(),
        );
      },
      verificationFailed: (e) async* {
        yield state.copyWith(
          isNumberSubmitting: false,
          authFailureOrSuccessOption: some(left(e.failure)),
        );
      },
      codeSent: (e) async* {
        yield state.copyWith(
          isCodeSent: true,
          isNumberSubmitting: false,
          verificationId: e.verificationId,
        );
      },
      verificationCodeChanged: (e) async* {
        yield state.copyWith(
          verificationCode: VerificationCode(e.verificationCodeStr),
          authFailureOrSuccessOption: none(),
        );
      },
      verifyCodePressed: (e) async* {
        final Either<AuthFailure, Unit> failureOrSuccess =
            await _authFacade.verifyNumberByCode(
          verificationId: state.verificationId,
          smsCode: state.verificationCode.getOrCrash(),
        );

        yield state.copyWith(
          isNumberVerified: failureOrSuccess.isRight(),
          isNumberSubmitting: false,
          isCodeSent: false,
          authFailureOrSuccessOption: none(),
          showCodeErrorMessages: true,
        );
      },
      genderChanged: (e) async* {
        yield state.copyWith(
          gender: Gender(e.genderStr),
          authFailureOrSuccessOption: none(),
        );
      },
      individualTaxpayerNumberChanged: (e) async* {
        yield state.copyWith(
          individualTaxpayerNumber:
              IndividualTaxpayerNumber(e.individualTaxpayerNumberStr),
          authFailureOrSuccessOption: none(),
        );
      },
      signInPressed: (e) async* {
        Either<AuthFailure, Unit> failureOrSuccess;

        final dataIsValid = <ValueObject>[
          state.appLanguage,
          state.name,
          state.birthDate,
          state.city,
          state.phoneNumber,
          state.gender,
          state.individualTaxpayerNumber,
        ].every((it) => it.isValid());

        if (dataIsValid && state.isNumberVerified) {
          yield state.copyWith(
            isSubmitting: true,
            authFailureOrSuccessOption: none(),
          );

          failureOrSuccess = await _authFacade.signIn(
            appLanguage: state.appLanguage,
            name: state.name,
            birthDate: state.birthDate,
            city: state.city,
            gender: state.gender,
            individualTaxpayerNumber: state.individualTaxpayerNumber,
          );
        }
        yield state.copyWith(
          isSubmitting: false,
          showErrorMessages: true,
          authFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }

  void _addVerificationFailed(AuthFailure failure) {
    add(SignInFormEvent.verificationFailed(failure));
  }

  Stream<SignInFormState> _mapVerifyPhoneToState(SignInFormEvent event) async* {
    final phoneNumberStr =
        PhoneNumber.countryCode + state.phoneNumber.getOrCrash();

    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: phoneNumberStr,
      verificationCompleted: (PhoneAuthCredential credential) async {
        add(SignInFormEvent.verificationCompleted(credential));
      },
      verificationFailed: (FirebaseAuthException e) {
        switch (e.code) {
          case 'ERROR_INVALID_PHONE_NUMBER':
            {
              _addVerificationFailed(
                const AuthFailure.invalidPhoneNumber(),
              );
              break;
            }
          case 'ERROR_SESSION_EXPIRED':
            {
              _addVerificationFailed(
                const AuthFailure.codeExpired(),
              );
              break;
            }
          default:
            {
              _addVerificationFailed(
                const AuthFailure.serverError(),
              );
            }
        }
      },
      codeSent: (String verificationId, int resendToken) {
        add(SignInFormEvent.codeSent(verificationId));
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }
}
