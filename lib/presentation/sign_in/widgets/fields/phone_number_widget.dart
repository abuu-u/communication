part of 'fields.dart';

final phoneFormatter = MaskTextInputFormatter(
  mask: PhoneNumber.mask,
);

const double progressIndicatorSize = 20;
const double progressIndicatorPadding = 10;
const double progressIndicatorWidth = 2;

class PhoneNumberWidget extends StatelessWidget {
  const PhoneNumberWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInFormBloc, SignInFormState>(
      builder: (context, state) {
        return TextFormField(
          keyboardType: TextInputType.phone,
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.phone),
            labelText: getLable(
              S.of(context).phone,
              isRequired: PhoneNumber.isRequired,
            ),
            hintText: PhoneNumber.hint,
            suffix: state.isNumberSubmitting ? ProgressIndicator() : null,
            suffixIcon: !state.isNumberSubmitting
                ? !state.isNumberVerified
                    ? IconButton(
                        icon: const Icon(Icons.send),
                        onPressed: () {
                          context
                              .read<SignInFormBloc>()
                              .add(const SignInFormEvent.verifyNumberPressed());
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
          validator: (_) => context
              .read<SignInFormBloc>()
              .state
              .phoneNumber
              .value
              .fold(
                (f) => f.maybeMap(
                  nan: (_) => S.of(context).nan(S.of(context).phone),
                  shouldContainAmountNumbers: (_) =>
                      S.of(context).shouldContainAmountNumbers(
                            S.of(context).phone,
                            PhoneNumber.phoneNumberLength,
                          ),
                  shouldNotBeEmptyOrNull: (_) => S.of(context).requiredField,
                  orElse: () => null,
                ),
                (_) => null,
              ),
        );
      },
    );
  }
}

class ProgressIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: progressIndicatorPadding),
      child: SizedBox(
        width: progressIndicatorSize,
        height: progressIndicatorSize,
        child: Align(
          alignment: Alignment.centerRight,
          child: CircularProgressIndicator(
            strokeWidth: progressIndicatorWidth,
            valueColor: AlwaysStoppedAnimation<Color>(
              Theme.of(context).primaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
