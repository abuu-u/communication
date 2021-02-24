part of 'fields.dart';

class AppLanguageWidget extends StatelessWidget {
  const AppLanguageWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInFormBloc, SignInFormState>(
      builder: (context, state) {
        return DropdownButtonFormField<Locale>(
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
          onChanged: (value) =>
              context.read<LocaleBloc>().add(LocaleEvent.localeChanged(value)),
          icon: const Icon(Icons.arrow_drop_down),
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.language),
            labelText: getLable(
              S.of(context).language,
              isRequired: AppLanguage.isRequired,
            ),
          ),
          validator: (_) => context
              .read<SignInFormBloc>()
              .state
              .appLanguage
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
