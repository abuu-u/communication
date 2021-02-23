// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'locale_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$LocaleEventTearOff {
  const _$LocaleEventTearOff();

// ignore: unused_element
  LocaleChanged localeChanged(Locale locale) {
    return LocaleChanged(
      locale,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $LocaleEvent = _$LocaleEventTearOff();

/// @nodoc
mixin _$LocaleEvent {
  Locale get locale;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult localeChanged(Locale locale),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult localeChanged(Locale locale),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult localeChanged(LocaleChanged value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult localeChanged(LocaleChanged value),
    @required TResult orElse(),
  });

  $LocaleEventCopyWith<LocaleEvent> get copyWith;
}

/// @nodoc
abstract class $LocaleEventCopyWith<$Res> {
  factory $LocaleEventCopyWith(
          LocaleEvent value, $Res Function(LocaleEvent) then) =
      _$LocaleEventCopyWithImpl<$Res>;
  $Res call({Locale locale});
}

/// @nodoc
class _$LocaleEventCopyWithImpl<$Res> implements $LocaleEventCopyWith<$Res> {
  _$LocaleEventCopyWithImpl(this._value, this._then);

  final LocaleEvent _value;
  // ignore: unused_field
  final $Res Function(LocaleEvent) _then;

  @override
  $Res call({
    Object locale = freezed,
  }) {
    return _then(_value.copyWith(
      locale: locale == freezed ? _value.locale : locale as Locale,
    ));
  }
}

/// @nodoc
abstract class $LocaleChangedCopyWith<$Res>
    implements $LocaleEventCopyWith<$Res> {
  factory $LocaleChangedCopyWith(
          LocaleChanged value, $Res Function(LocaleChanged) then) =
      _$LocaleChangedCopyWithImpl<$Res>;
  @override
  $Res call({Locale locale});
}

/// @nodoc
class _$LocaleChangedCopyWithImpl<$Res> extends _$LocaleEventCopyWithImpl<$Res>
    implements $LocaleChangedCopyWith<$Res> {
  _$LocaleChangedCopyWithImpl(
      LocaleChanged _value, $Res Function(LocaleChanged) _then)
      : super(_value, (v) => _then(v as LocaleChanged));

  @override
  LocaleChanged get _value => super._value as LocaleChanged;

  @override
  $Res call({
    Object locale = freezed,
  }) {
    return _then(LocaleChanged(
      locale == freezed ? _value.locale : locale as Locale,
    ));
  }
}

/// @nodoc
class _$LocaleChanged implements LocaleChanged {
  const _$LocaleChanged(this.locale) : assert(locale != null);

  @override
  final Locale locale;

  @override
  String toString() {
    return 'LocaleEvent.localeChanged(locale: $locale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LocaleChanged &&
            (identical(other.locale, locale) ||
                const DeepCollectionEquality().equals(other.locale, locale)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(locale);

  @override
  $LocaleChangedCopyWith<LocaleChanged> get copyWith =>
      _$LocaleChangedCopyWithImpl<LocaleChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult localeChanged(Locale locale),
  }) {
    assert(localeChanged != null);
    return localeChanged(locale);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult localeChanged(Locale locale),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (localeChanged != null) {
      return localeChanged(locale);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult localeChanged(LocaleChanged value),
  }) {
    assert(localeChanged != null);
    return localeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult localeChanged(LocaleChanged value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (localeChanged != null) {
      return localeChanged(this);
    }
    return orElse();
  }
}

abstract class LocaleChanged implements LocaleEvent {
  const factory LocaleChanged(Locale locale) = _$LocaleChanged;

  @override
  Locale get locale;
  @override
  $LocaleChangedCopyWith<LocaleChanged> get copyWith;
}

/// @nodoc
class _$LocaleStateTearOff {
  const _$LocaleStateTearOff();

// ignore: unused_element
  _LocaleState call({@required Locale locale}) {
    return _LocaleState(
      locale: locale,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $LocaleState = _$LocaleStateTearOff();

/// @nodoc
mixin _$LocaleState {
  Locale get locale;

  $LocaleStateCopyWith<LocaleState> get copyWith;
}

/// @nodoc
abstract class $LocaleStateCopyWith<$Res> {
  factory $LocaleStateCopyWith(
          LocaleState value, $Res Function(LocaleState) then) =
      _$LocaleStateCopyWithImpl<$Res>;
  $Res call({Locale locale});
}

/// @nodoc
class _$LocaleStateCopyWithImpl<$Res> implements $LocaleStateCopyWith<$Res> {
  _$LocaleStateCopyWithImpl(this._value, this._then);

  final LocaleState _value;
  // ignore: unused_field
  final $Res Function(LocaleState) _then;

  @override
  $Res call({
    Object locale = freezed,
  }) {
    return _then(_value.copyWith(
      locale: locale == freezed ? _value.locale : locale as Locale,
    ));
  }
}

/// @nodoc
abstract class _$LocaleStateCopyWith<$Res>
    implements $LocaleStateCopyWith<$Res> {
  factory _$LocaleStateCopyWith(
          _LocaleState value, $Res Function(_LocaleState) then) =
      __$LocaleStateCopyWithImpl<$Res>;
  @override
  $Res call({Locale locale});
}

/// @nodoc
class __$LocaleStateCopyWithImpl<$Res> extends _$LocaleStateCopyWithImpl<$Res>
    implements _$LocaleStateCopyWith<$Res> {
  __$LocaleStateCopyWithImpl(
      _LocaleState _value, $Res Function(_LocaleState) _then)
      : super(_value, (v) => _then(v as _LocaleState));

  @override
  _LocaleState get _value => super._value as _LocaleState;

  @override
  $Res call({
    Object locale = freezed,
  }) {
    return _then(_LocaleState(
      locale: locale == freezed ? _value.locale : locale as Locale,
    ));
  }
}

/// @nodoc
class _$_LocaleState implements _LocaleState {
  const _$_LocaleState({@required this.locale}) : assert(locale != null);

  @override
  final Locale locale;

  @override
  String toString() {
    return 'LocaleState(locale: $locale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LocaleState &&
            (identical(other.locale, locale) ||
                const DeepCollectionEquality().equals(other.locale, locale)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(locale);

  @override
  _$LocaleStateCopyWith<_LocaleState> get copyWith =>
      __$LocaleStateCopyWithImpl<_LocaleState>(this, _$identity);
}

abstract class _LocaleState implements LocaleState {
  const factory _LocaleState({@required Locale locale}) = _$_LocaleState;

  @override
  Locale get locale;
  @override
  _$LocaleStateCopyWith<_LocaleState> get copyWith;
}
