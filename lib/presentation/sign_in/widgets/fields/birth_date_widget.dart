part of 'fields.dart';

final dateFormatter = MaskTextInputFormatter(
  mask: BirthDate.mask,
);

class BirthDateWidget extends StatelessWidget {
  const BirthDateWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInFormBloc, SignInFormState>(
      builder: (context, state) {
        return TextFormField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.calendar_today),
            labelText: getLable(
              S.of(context).birthDate,
              isRequired: BirthDate.isRequired,
            ),
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
                  invalidDateFormat: (_) => S.of(context).invalidDateFormat,
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
