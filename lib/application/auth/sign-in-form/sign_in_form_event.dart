part of 'sign_in_form_bloc.dart';

@freezed
abstract class SignInFormEvent with _$SignInFormEvent {
  const factory SignInFormEvent.appLanguageChanged(Locale appLanguage) =
      AppLanguageChanged;
  const factory SignInFormEvent.nameChanged(String nameStr) = NameChanged;
  const factory SignInFormEvent.birthDateChanged(String birthDateStr) =
      BirthDateChanged;
  const factory SignInFormEvent.cityChanged(String cityStr) = CityChanged;
  const factory SignInFormEvent.phoneNumberChanged(String phoneNumberStr) =
      PhoneNumberChanged;
  const factory SignInFormEvent.verifyNumberPressed() = VerifyNumberPressed;
  const factory SignInFormEvent.verificationCompleted(
      PhoneAuthCredential credential) = VerificationCompleted;
  const factory SignInFormEvent.verificationFailed(AuthFailure failure) =
      VerificationFailed;
  const factory SignInFormEvent.codeSent(String verificationId) = CodeSent;
  const factory SignInFormEvent.verificationCodeChanged(
      String verificationCodeStr) = VerificationCodeChanged;
  const factory SignInFormEvent.verifyCodePressed() = VerifyCodePressed;
  const factory SignInFormEvent.genderChanged(String genderStr) = GenderChanged;
  const factory SignInFormEvent.individualTaxpayerNumberChanged(
      String individualTaxpayerNumberStr) = IndividualTaxpayerNumberChanged;
  const factory SignInFormEvent.signInPressed() = SignInPressed;
}
