part of 'locale_bloc.dart';

@freezed
abstract class LocaleEvent with _$LocaleEvent {
  const factory LocaleEvent.localeChanged(Locale locale) = LocaleChanged;
}
