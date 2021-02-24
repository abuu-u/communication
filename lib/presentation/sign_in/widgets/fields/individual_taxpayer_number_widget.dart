part of 'fields.dart';

class IndividualTaxpayerNumberWidget extends StatelessWidget {
  const IndividualTaxpayerNumberWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInFormBloc, SignInFormState>(
      builder: (context, state) {
        return TextFormField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.assignment),
            labelText: getLable(
              S.of(context).individualTaxpayerNumber,
              isRequired: IndividualTaxpayerNumber.isRequired,
            ),
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
                  nan: (_) =>
                      S.of(context).nan(S.of(context).individualTaxpayerNumber),
                  shouldContainAmountNumbers: (_) =>
                      S.of(context).shouldContainAmountNumbers(
                            S.of(context).individualTaxpayerNumber,
                            IndividualTaxpayerNumber.itnLength,
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
