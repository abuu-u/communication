import 'package:auto_route/auto_route.dart';
import 'package:communication/application/auth/auth_bloc.dart';
import 'package:communication/application/auth/sign-in-form/sign_in_form_bloc.dart';
import 'package:communication/generated/l10n.dart';
import 'package:communication/presentation/routes/app_router.gr.dart';
import 'package:communication/presentation/sign_in/widgets/error_snackbar.dart';
import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'fields/fields.dart';

const double formPadding = 15;
const double fieldBottomPadding = 15;

class SignInForm extends StatelessWidget {
  void _showErrorSnackbar(BuildContext context, String message) {
    showFlash(
      context: context,
      duration: const Duration(seconds: 5),
      builder: (context, controller) {
        return ErrorSnackbar(
          controller: controller,
          message: message,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (failure) {
              failure.map(
                serverError: (_) => _showErrorSnackbar(
                  context,
                  S.of(context).serverError,
                ),
                invalidPhoneNumber: (_) => _showErrorSnackbar(
                  context,
                  S.of(context).invalidPhoneNumber,
                ),
                invalidVerificationCode: (_) => _showErrorSnackbar(
                  context,
                  S.of(context).invalidVerificationCode,
                ),
                codeExpired: (_) => _showErrorSnackbar(
                  context,
                  S.of(context).codeExpired,
                ),
                individualTaxpayerNumberAlreadyInUse: (_) => _showErrorSnackbar(
                  context,
                  S.of(context).individualTaxpayerNumberAlreadyInUse,
                ),
              );
            },
            (_) {
              ExtendedNavigator.of(context).replace(Routes.homePage);
              context
                  .read<AuthBloc>()
                  .add(const AuthEvent.authCheckRequested());
            },
          ),
        );
      },
      builder: (context, state) {
        return Form(
          autovalidateMode: state.showErrorMessages
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
          child: ListView(
            padding: const EdgeInsets.all(formPadding),
            children: [
              Text(
                '* - ${S.of(context).requiredField}',
                style: TextStyle(
                  fontSize: 14,
                  color: Theme.of(context).errorColor,
                ),
              ),
              const SizedBox(height: fieldBottomPadding),
              const AppLanguageWidget(),
              const SizedBox(height: fieldBottomPadding),
              const NameWidget(),
              const SizedBox(height: fieldBottomPadding),
              const BirthDateWidget(),
              const SizedBox(height: fieldBottomPadding),
              const CityWidget(),
              const SizedBox(height: fieldBottomPadding),
              const PhoneNumberWidget(),
              const SizedBox(height: fieldBottomPadding),
              if (state.isCodeSent && !state.isNumberVerified) ...[
                const VerificationCodeWidget(),
                const SizedBox(height: fieldBottomPadding)
              ],
              const GenderWidget(),
              const SizedBox(height: fieldBottomPadding),
              const IndividualTaxpayerNumberWidget(),
              const SizedBox(height: fieldBottomPadding),
              TextButton(
                onPressed: () => context
                    .read<SignInFormBloc>()
                    .add(const SignInFormEvent.signInPressed()),
                child: Text(S.of(context).register),
              ),
            ],
          ),
        );
      },
    );
  }
}
