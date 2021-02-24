part of 'fields.dart';

class NameWidget extends StatelessWidget {
  const NameWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInFormBloc, SignInFormState>(
      builder: (context, state) {
        return TextFormField(
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.person),
            labelText: getLable(
              S.of(context).name,
              isRequired: Name.isRequired,
            ),
          ),
          autocorrect: false,
          onChanged: (value) => context
              .read<SignInFormBloc>()
              .add(SignInFormEvent.nameChanged(value)),
          validator: (_) => context
              .read<SignInFormBloc>()
              .state
              .name
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
