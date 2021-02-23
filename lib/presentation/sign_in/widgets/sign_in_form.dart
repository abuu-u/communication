import 'package:auto_route/auto_route.dart';
import 'package:communication/application/auth/auth_bloc.dart';
import 'package:communication/application/auth/sign-in-form/sign_in_form_bloc.dart';
import 'package:communication/application/bloc/locale_bloc.dart';
import 'package:communication/domain/auth/value_objects.dart';
import 'package:communication/extensions/language.dart';
import 'package:communication/generated/l10n.dart';
import 'package:communication/presentation/routes/app_router.gr.dart';
import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class SignInForm extends StatelessWidget {
  final dateFormatter = MaskTextInputFormatter(
    mask: BirthDate.mask,
  );
  final phoneFormatter = MaskTextInputFormatter(
    mask: PhoneNumber.mask,
  );

  void _showErrorSnackbar(BuildContext context, String message) {
    showFlash(
      context: context,
      duration: const Duration(seconds: 5),
      builder: (context, controller) {
        return Flash(
          controller: controller,
          horizontalDismissDirection: HorizontalDismissDirection.horizontal,
          backgroundColor: Colors.black87,
          child: FlashBar(
            message: Text(
              message,
              style: const TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
            icon: Icon(
              Icons.warning,
              color: Colors.red[300],
            ),
            leftBarIndicatorColor: Colors.red[300],
          ),
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
            padding: const EdgeInsets.all(15),
            children: [
              Text(
                '* - ${S.of(context).requiredField}',
                style: TextStyle(
                  fontSize: 14,
                  color: Theme.of(context).errorColor,
                ),
              ),
              const SizedBox(height: 15),
              DropdownButtonFormField<Locale>(
                items: const AppLocalizationDelegate()
                    .supportedLocales
                    .map(
                      (locale) => DropdownMenuItem(
                        value: locale,
                        child: Text(locale.nativeName),
                      ),
                    )
                    .toList(),
                value: state.appLanguage.value.getOrElse(() => null),
                onChanged: (value) => context
                    .read<LocaleBloc>()
                    .add(LocaleEvent.localeChanged(value)),
                icon: const Icon(Icons.arrow_drop_down),
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.language),
                  labelText:
                      '${S.of(context).language}${AppLanguage.isRequired ? '*' : ''}',
                ),
                validator: (_) =>
                    context.read<SignInFormBloc>().state.appLanguage.value.fold(
                          (f) => f.maybeMap(
                              shouldNotBeEmptyOrNull: (_) =>
                                  S.of(context).requiredField,
                              orElse: () => null),
                          (_) => null,
                        ),
              ),
              const SizedBox(height: 15),
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.person),
                  labelText:
                      '${S.of(context).name}${Name.isRequired ? '*' : ''}',
                ),
                autocorrect: false,
                onChanged: (value) => context
                    .read<SignInFormBloc>()
                    .add(SignInFormEvent.nameChanged(value)),
                validator: (_) =>
                    context.read<SignInFormBloc>().state.name.value.fold(
                          (f) => f.maybeMap(
                              shouldNotBeEmptyOrNull: (_) =>
                                  S.of(context).requiredField,
                              orElse: () => null),
                          (_) => null,
                        ),
              ),
              const SizedBox(height: 15),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.calendar_today),
                  labelText:
                      '${S.of(context).birthDate}${BirthDate.isRequired ? '*' : ''}',
                  hintText: BirthDate.hint,
                ),
                inputFormatters: [dateFormatter],
                autocorrect: false,
                onChanged: (value) => context
                    .read<SignInFormBloc>()
                    .add(SignInFormEvent.birthDateChanged(value)),
                validator: (_) => context
                    .read<SignInFormBloc>()
                    .state
                    .birthDate
                    .value
                    .fold(
                      (f) => f.maybeMap(
                        insufficientAge: (_) => S.of(context).insufficientAge,
                        invalidDateFormat: (_) =>
                            S.of(context).invalidDateFormat,
                        shouldNotBeEmptyOrNull: (_) =>
                            S.of(context).requiredField,
                        orElse: () => null,
                      ),
                      (_) => null,
                    ),
              ),
              const SizedBox(height: 15),
              DropdownButtonFormField<String>(
                items: City.availableCities
                    .map(
                      (city) => DropdownMenuItem<String>(
                        value: city,
                        child: Text(S.of(context).getCities(city)),
                      ),
                    )
                    .toList(),
                value: state.city.value.getOrElse(() => null),
                onChanged: (value) => context
                    .read<SignInFormBloc>()
                    .add(SignInFormEvent.cityChanged(value)),
                icon: const Icon(Icons.arrow_drop_down),
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.location_on),
                  labelText:
                      '${S.of(context).city}${City.isRequired ? '*' : ''}',
                ),
                validator: (_) =>
                    context.read<SignInFormBloc>().state.city.value.fold(
                          (f) => f.maybeMap(
                              shouldNotBeEmptyOrNull: (_) =>
                                  S.of(context).requiredField,
                              orElse: () => null),
                          (_) => null,
                        ),
              ),
              const SizedBox(height: 15),
              TextFormField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.phone),
                  labelText:
                      '${S.of(context).phone}${PhoneNumber.isRequired ? '*' : ''}',
                  hintText: PhoneNumber.hint,
                  suffix: state.isNumberSubmitting
                      ? Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: SizedBox(
                            width: 20,
                            height: 20,
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: CircularProgressIndicator(
                                strokeWidth: 2.0,
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  Theme.of(context).primaryColor,
                                ),
                              ),
                            ),
                          ),
                        )
                      : null,
                  suffixIcon: !state.isNumberSubmitting
                      ? !state.isNumberVerified
                          ? IconButton(
                              icon: const Icon(Icons.send),
                              onPressed: () {
                                context.read<SignInFormBloc>().add(
                                    const SignInFormEvent
                                        .verifyNumberPressed());
                              },
                            )
                          : const Icon(Icons.check)
                      : null,
                ),
                autovalidateMode: state.showNumberErrorMessages
                    ? AutovalidateMode.always
                    : AutovalidateMode.disabled,
                inputFormatters: [phoneFormatter],
                autocorrect: false,
                onChanged: (value) => context
                    .read<SignInFormBloc>()
                    .add(SignInFormEvent.phoneNumberChanged(
                      phoneFormatter.getUnmaskedText(),
                    )),
                validator: (_) =>
                    context.read<SignInFormBloc>().state.phoneNumber.value.fold(
                          (f) => f.maybeMap(
                            nan: (_) => S.of(context).nan(S.of(context).phone),
                            shouldContainAmountNumbers: (_) =>
                                S.of(context).shouldContainAmountNumbers(
                                      S.of(context).phone,
                                      PhoneNumber.phoneNumberLength,
                                    ),
                            shouldNotBeEmptyOrNull: (_) =>
                                S.of(context).requiredField,
                            orElse: () => null,
                          ),
                          (_) => null,
                        ),
              ),
              const SizedBox(height: 15),
              if (state.isCodeSent && !state.isNumberVerified) ...[
                TextFormField(
                  autofocus: true,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.sms),
                      labelText:
                          '${S.of(context).verificationCode}${VerificationCode.isRequired ? '*' : ''}',
                      suffixIcon: IconButton(
                        icon: const Icon(Icons.send),
                        onPressed: () {
                          context
                              .read<SignInFormBloc>()
                              .add(const SignInFormEvent.verifyCodePressed());
                        },
                      )),
                  maxLength: VerificationCode.verificationCodeLength,
                  autocorrect: false,
                  autovalidateMode: state.showCodeErrorMessages
                      ? AutovalidateMode.always
                      : AutovalidateMode.disabled,
                  onChanged: (value) => context
                      .read<SignInFormBloc>()
                      .add(SignInFormEvent.verificationCodeChanged(
                        value,
                      )),
                  validator: (_) => context
                      .read<SignInFormBloc>()
                      .state
                      .verificationCode
                      .value
                      .fold(
                        (f) => f.maybeMap(
                          nan: (_) => S.of(context).nan(
                                S.of(context).verificationCode,
                              ),
                          shouldContainAmountNumbers: (_) =>
                              S.of(context).shouldContainAmountNumbers(
                                    S.of(context).verificationCode,
                                    VerificationCode.verificationCodeLength,
                                  ),
                          orElse: () => null,
                        ),
                        (_) => null,
                      ),
                ),
                const SizedBox(height: 15)
              ],
              DropdownButtonFormField<String>(
                items: Gender.availableGenders
                    .map(
                      (gender) => DropdownMenuItem<String>(
                        value: gender,
                        child: Text(S.of(context).getGender(gender)),
                      ),
                    )
                    .toList(),
                value: state.gender.value.getOrElse(() => null),
                onChanged: (value) => context
                    .read<SignInFormBloc>()
                    .add(SignInFormEvent.genderChanged(value)),
                icon: const Icon(Icons.arrow_drop_down),
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.wc),
                  labelText:
                      '${S.of(context).gender}${Gender.isRequired ? '*' : ''}',
                ),
                validator: (_) =>
                    context.read<SignInFormBloc>().state.gender.value.fold(
                          (f) => f.maybeMap(
                              shouldNotBeEmptyOrNull: (_) =>
                                  S.of(context).requiredField,
                              orElse: () => null),
                          (_) => null,
                        ),
              ),
              const SizedBox(height: 15),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.assignment),
                  labelText:
                      '${S.of(context).individualTaxpayerNumber}${IndividualTaxpayerNumber.isRequired ? '*' : ''}',
                ),
                maxLength: IndividualTaxpayerNumber.itnLength,
                autocorrect: false,
                onChanged: (value) => context
                    .read<SignInFormBloc>()
                    .add(SignInFormEvent.individualTaxpayerNumberChanged(
                      value,
                    )),
                validator: (_) => context
                    .read<SignInFormBloc>()
                    .state
                    .individualTaxpayerNumber
                    .value
                    .fold(
                      (f) => f.maybeMap(
                        nan: (_) => S
                            .of(context)
                            .nan(S.of(context).individualTaxpayerNumber),
                        shouldContainAmountNumbers: (_) =>
                            S.of(context).shouldContainAmountNumbers(
                                  S.of(context).individualTaxpayerNumber,
                                  IndividualTaxpayerNumber.itnLength,
                                ),
                        shouldNotBeEmptyOrNull: (_) =>
                            S.of(context).requiredField,
                        orElse: () => null,
                      ),
                      (_) => null,
                    ),
              ),
              const SizedBox(height: 15),
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
