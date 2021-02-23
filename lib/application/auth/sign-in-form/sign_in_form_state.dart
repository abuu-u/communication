part of 'sign_in_form_bloc.dart';

@freezed
abstract class SignInFormState with _$SignInFormState {
  const factory SignInFormState({
    @required AppLanguage appLanguage,
    @required Name name,
    @required BirthDate birthDate,
    @required City city,
    @required PhoneNumber phoneNumber,
    @required VerificationCode verificationCode,
    @required String verificationId,
    @required Gender gender,
    @required IndividualTaxpayerNumber individualTaxpayerNumber,
    @required bool showErrorMessages,
    @required bool showNumberErrorMessages,
    @required bool showCodeErrorMessages,
    @required bool isSubmitting,
    @required bool isNumberSubmitting,
    @required bool isCodeSent,
    @required bool isNumberVerified,
    @required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _SignInFormState;

  factory SignInFormState.initial() => SignInFormState(
        appLanguage: AppLanguage(
          const AppLocalizationDelegate().supportedLocales.first,
        ),
        name: Name(''),
        birthDate: BirthDate(''),
        city: City(''),
        phoneNumber: PhoneNumber(''),
        verificationCode: VerificationCode(''),
        verificationId: '',
        gender: Gender(''),
        individualTaxpayerNumber: IndividualTaxpayerNumber(''),
        showErrorMessages: false,
        showNumberErrorMessages: false,
        showCodeErrorMessages: false,
        isSubmitting: false,
        isNumberSubmitting: false,
        isCodeSent: false,
        isNumberVerified: false,
        authFailureOrSuccessOption: none(),
      );
}
