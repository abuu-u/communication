part of 'fields.dart';

class GenderWidget extends StatelessWidget {
  const GenderWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInFormBloc, SignInFormState>(
      builder: (context, state) {
        return DropdownButtonFormField<String>(
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
            labelText: getLable(
              S.of(context).gender,
              isRequired: Gender.isRequired,
            ),
          ),
          validator: (_) => context
              .read<SignInFormBloc>()
              .state
              .gender
              .value
              .fold(
                (f) => f.maybeMap(
                    shouldNotBeEmptyOrNull: (_) => S.of(context).requiredField,
                    orElse: () => null),
                (_) => null,
              ),
        );
      },
    );
  }
}
