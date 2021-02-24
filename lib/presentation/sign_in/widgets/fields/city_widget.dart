part of 'fields.dart';

class CityWidget extends StatelessWidget {
  const CityWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInFormBloc, SignInFormState>(
      builder: (context, state) {
        return DropdownButtonFormField<String>(
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
            labelText: getLable(
              S.of(context).city,
              isRequired: City.isRequired,
            ),
          ),
          validator: (_) => context
              .read<SignInFormBloc>()
              .state
              .city
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
