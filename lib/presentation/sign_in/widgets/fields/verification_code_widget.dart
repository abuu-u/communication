part of 'fields.dart';

class VerificationCodeWidget extends StatelessWidget {
  const VerificationCodeWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInFormBloc, SignInFormState>(
      builder: (context, state) {
        return TextFormField(
          autofocus: true,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
              prefixIcon: const Icon(Icons.sms),
              labelText: getLable(
                S.of(context).verificationCode,
                isRequired: VerificationCode.isRequired,
              ),
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
          validator: (_) =>
              context.read<SignInFormBloc>().state.verificationCode.value.fold(
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
        );
      },
    );
  }
}
