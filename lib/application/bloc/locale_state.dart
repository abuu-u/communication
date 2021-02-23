part of 'locale_bloc.dart';

@freezed
abstract class LocaleState with _$LocaleState {
  const factory LocaleState({
    @required Locale locale,
  }) = _LocaleState;
  factory LocaleState.initial() => LocaleState(
        locale: const AppLocalizationDelegate().supportedLocales.first,
      );
}
