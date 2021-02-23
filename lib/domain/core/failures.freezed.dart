// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ValueFailureTearOff {
  const _$ValueFailureTearOff();

// ignore: unused_element
  Nan<T> nan<T>({@required T failedValue}) {
    return Nan<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  ShouldNotBeEmptyOrNull<T> shouldNotBeEmptyOrNull<T>(
      {@required T failedValue}) {
    return ShouldNotBeEmptyOrNull<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  ShouldContainAmountNumbers<T> shouldContainAmountNumbers<T>(
      {@required T failedValue, @required int length}) {
    return ShouldContainAmountNumbers<T>(
      failedValue: failedValue,
      length: length,
    );
  }

// ignore: unused_element
  InsufficientAge<T> insufficientAge<T>(
      {@required T failedValue, @required int min}) {
    return InsufficientAge<T>(
      failedValue: failedValue,
      min: min,
    );
  }

// ignore: unused_element
  InvalidDateFormat<T> invalidDateFormat<T>(
      {@required T failedValue, @required String format}) {
    return InvalidDateFormat<T>(
      failedValue: failedValue,
      format: format,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ValueFailure = _$ValueFailureTearOff();

/// @nodoc
mixin _$ValueFailure<T> {
  T get failedValue;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult nan(T failedValue),
    @required TResult shouldNotBeEmptyOrNull(T failedValue),
    @required TResult shouldContainAmountNumbers(T failedValue, int length),
    @required TResult insufficientAge(T failedValue, int min),
    @required TResult invalidDateFormat(T failedValue, String format),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult nan(T failedValue),
    TResult shouldNotBeEmptyOrNull(T failedValue),
    TResult shouldContainAmountNumbers(T failedValue, int length),
    TResult insufficientAge(T failedValue, int min),
    TResult invalidDateFormat(T failedValue, String format),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult nan(Nan<T> value),
    @required TResult shouldNotBeEmptyOrNull(ShouldNotBeEmptyOrNull<T> value),
    @required
        TResult shouldContainAmountNumbers(ShouldContainAmountNumbers<T> value),
    @required TResult insufficientAge(InsufficientAge<T> value),
    @required TResult invalidDateFormat(InvalidDateFormat<T> value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult nan(Nan<T> value),
    TResult shouldNotBeEmptyOrNull(ShouldNotBeEmptyOrNull<T> value),
    TResult shouldContainAmountNumbers(ShouldContainAmountNumbers<T> value),
    TResult insufficientAge(InsufficientAge<T> value),
    TResult invalidDateFormat(InvalidDateFormat<T> value),
    @required TResult orElse(),
  });

  $ValueFailureCopyWith<T, ValueFailure<T>> get copyWith;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(_value.copyWith(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
abstract class $NanCopyWith<T, $Res> implements $ValueFailureCopyWith<T, $Res> {
  factory $NanCopyWith(Nan<T> value, $Res Function(Nan<T>) then) =
      _$NanCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$NanCopyWithImpl<T, $Res> extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $NanCopyWith<T, $Res> {
  _$NanCopyWithImpl(Nan<T> _value, $Res Function(Nan<T>) _then)
      : super(_value, (v) => _then(v as Nan<T>));

  @override
  Nan<T> get _value => super._value as Nan<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(Nan<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
class _$Nan<T> with DiagnosticableTreeMixin implements Nan<T> {
  const _$Nan({@required this.failedValue}) : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.nan(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.nan'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Nan<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $NanCopyWith<T, Nan<T>> get copyWith =>
      _$NanCopyWithImpl<T, Nan<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult nan(T failedValue),
    @required TResult shouldNotBeEmptyOrNull(T failedValue),
    @required TResult shouldContainAmountNumbers(T failedValue, int length),
    @required TResult insufficientAge(T failedValue, int min),
    @required TResult invalidDateFormat(T failedValue, String format),
  }) {
    assert(nan != null);
    assert(shouldNotBeEmptyOrNull != null);
    assert(shouldContainAmountNumbers != null);
    assert(insufficientAge != null);
    assert(invalidDateFormat != null);
    return nan(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult nan(T failedValue),
    TResult shouldNotBeEmptyOrNull(T failedValue),
    TResult shouldContainAmountNumbers(T failedValue, int length),
    TResult insufficientAge(T failedValue, int min),
    TResult invalidDateFormat(T failedValue, String format),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (nan != null) {
      return nan(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult nan(Nan<T> value),
    @required TResult shouldNotBeEmptyOrNull(ShouldNotBeEmptyOrNull<T> value),
    @required
        TResult shouldContainAmountNumbers(ShouldContainAmountNumbers<T> value),
    @required TResult insufficientAge(InsufficientAge<T> value),
    @required TResult invalidDateFormat(InvalidDateFormat<T> value),
  }) {
    assert(nan != null);
    assert(shouldNotBeEmptyOrNull != null);
    assert(shouldContainAmountNumbers != null);
    assert(insufficientAge != null);
    assert(invalidDateFormat != null);
    return nan(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult nan(Nan<T> value),
    TResult shouldNotBeEmptyOrNull(ShouldNotBeEmptyOrNull<T> value),
    TResult shouldContainAmountNumbers(ShouldContainAmountNumbers<T> value),
    TResult insufficientAge(InsufficientAge<T> value),
    TResult invalidDateFormat(InvalidDateFormat<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (nan != null) {
      return nan(this);
    }
    return orElse();
  }
}

abstract class Nan<T> implements ValueFailure<T> {
  const factory Nan({@required T failedValue}) = _$Nan<T>;

  @override
  T get failedValue;
  @override
  $NanCopyWith<T, Nan<T>> get copyWith;
}

/// @nodoc
abstract class $ShouldNotBeEmptyOrNullCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $ShouldNotBeEmptyOrNullCopyWith(ShouldNotBeEmptyOrNull<T> value,
          $Res Function(ShouldNotBeEmptyOrNull<T>) then) =
      _$ShouldNotBeEmptyOrNullCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$ShouldNotBeEmptyOrNullCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $ShouldNotBeEmptyOrNullCopyWith<T, $Res> {
  _$ShouldNotBeEmptyOrNullCopyWithImpl(ShouldNotBeEmptyOrNull<T> _value,
      $Res Function(ShouldNotBeEmptyOrNull<T>) _then)
      : super(_value, (v) => _then(v as ShouldNotBeEmptyOrNull<T>));

  @override
  ShouldNotBeEmptyOrNull<T> get _value =>
      super._value as ShouldNotBeEmptyOrNull<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(ShouldNotBeEmptyOrNull<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
class _$ShouldNotBeEmptyOrNull<T>
    with DiagnosticableTreeMixin
    implements ShouldNotBeEmptyOrNull<T> {
  const _$ShouldNotBeEmptyOrNull({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.shouldNotBeEmptyOrNull(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'ValueFailure<$T>.shouldNotBeEmptyOrNull'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ShouldNotBeEmptyOrNull<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $ShouldNotBeEmptyOrNullCopyWith<T, ShouldNotBeEmptyOrNull<T>> get copyWith =>
      _$ShouldNotBeEmptyOrNullCopyWithImpl<T, ShouldNotBeEmptyOrNull<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult nan(T failedValue),
    @required TResult shouldNotBeEmptyOrNull(T failedValue),
    @required TResult shouldContainAmountNumbers(T failedValue, int length),
    @required TResult insufficientAge(T failedValue, int min),
    @required TResult invalidDateFormat(T failedValue, String format),
  }) {
    assert(nan != null);
    assert(shouldNotBeEmptyOrNull != null);
    assert(shouldContainAmountNumbers != null);
    assert(insufficientAge != null);
    assert(invalidDateFormat != null);
    return shouldNotBeEmptyOrNull(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult nan(T failedValue),
    TResult shouldNotBeEmptyOrNull(T failedValue),
    TResult shouldContainAmountNumbers(T failedValue, int length),
    TResult insufficientAge(T failedValue, int min),
    TResult invalidDateFormat(T failedValue, String format),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (shouldNotBeEmptyOrNull != null) {
      return shouldNotBeEmptyOrNull(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult nan(Nan<T> value),
    @required TResult shouldNotBeEmptyOrNull(ShouldNotBeEmptyOrNull<T> value),
    @required
        TResult shouldContainAmountNumbers(ShouldContainAmountNumbers<T> value),
    @required TResult insufficientAge(InsufficientAge<T> value),
    @required TResult invalidDateFormat(InvalidDateFormat<T> value),
  }) {
    assert(nan != null);
    assert(shouldNotBeEmptyOrNull != null);
    assert(shouldContainAmountNumbers != null);
    assert(insufficientAge != null);
    assert(invalidDateFormat != null);
    return shouldNotBeEmptyOrNull(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult nan(Nan<T> value),
    TResult shouldNotBeEmptyOrNull(ShouldNotBeEmptyOrNull<T> value),
    TResult shouldContainAmountNumbers(ShouldContainAmountNumbers<T> value),
    TResult insufficientAge(InsufficientAge<T> value),
    TResult invalidDateFormat(InvalidDateFormat<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (shouldNotBeEmptyOrNull != null) {
      return shouldNotBeEmptyOrNull(this);
    }
    return orElse();
  }
}

abstract class ShouldNotBeEmptyOrNull<T> implements ValueFailure<T> {
  const factory ShouldNotBeEmptyOrNull({@required T failedValue}) =
      _$ShouldNotBeEmptyOrNull<T>;

  @override
  T get failedValue;
  @override
  $ShouldNotBeEmptyOrNullCopyWith<T, ShouldNotBeEmptyOrNull<T>> get copyWith;
}

/// @nodoc
abstract class $ShouldContainAmountNumbersCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $ShouldContainAmountNumbersCopyWith(
          ShouldContainAmountNumbers<T> value,
          $Res Function(ShouldContainAmountNumbers<T>) then) =
      _$ShouldContainAmountNumbersCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue, int length});
}

/// @nodoc
class _$ShouldContainAmountNumbersCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $ShouldContainAmountNumbersCopyWith<T, $Res> {
  _$ShouldContainAmountNumbersCopyWithImpl(ShouldContainAmountNumbers<T> _value,
      $Res Function(ShouldContainAmountNumbers<T>) _then)
      : super(_value, (v) => _then(v as ShouldContainAmountNumbers<T>));

  @override
  ShouldContainAmountNumbers<T> get _value =>
      super._value as ShouldContainAmountNumbers<T>;

  @override
  $Res call({
    Object failedValue = freezed,
    Object length = freezed,
  }) {
    return _then(ShouldContainAmountNumbers<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
      length: length == freezed ? _value.length : length as int,
    ));
  }
}

/// @nodoc
class _$ShouldContainAmountNumbers<T>
    with DiagnosticableTreeMixin
    implements ShouldContainAmountNumbers<T> {
  const _$ShouldContainAmountNumbers(
      {@required this.failedValue, @required this.length})
      : assert(failedValue != null),
        assert(length != null);

  @override
  final T failedValue;
  @override
  final int length;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.shouldContainAmountNumbers(failedValue: $failedValue, length: $length)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'ValueFailure<$T>.shouldContainAmountNumbers'))
      ..add(DiagnosticsProperty('failedValue', failedValue))
      ..add(DiagnosticsProperty('length', length));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ShouldContainAmountNumbers<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)) &&
            (identical(other.length, length) ||
                const DeepCollectionEquality().equals(other.length, length)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failedValue) ^
      const DeepCollectionEquality().hash(length);

  @override
  $ShouldContainAmountNumbersCopyWith<T, ShouldContainAmountNumbers<T>>
      get copyWith => _$ShouldContainAmountNumbersCopyWithImpl<T,
          ShouldContainAmountNumbers<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult nan(T failedValue),
    @required TResult shouldNotBeEmptyOrNull(T failedValue),
    @required TResult shouldContainAmountNumbers(T failedValue, int length),
    @required TResult insufficientAge(T failedValue, int min),
    @required TResult invalidDateFormat(T failedValue, String format),
  }) {
    assert(nan != null);
    assert(shouldNotBeEmptyOrNull != null);
    assert(shouldContainAmountNumbers != null);
    assert(insufficientAge != null);
    assert(invalidDateFormat != null);
    return shouldContainAmountNumbers(failedValue, length);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult nan(T failedValue),
    TResult shouldNotBeEmptyOrNull(T failedValue),
    TResult shouldContainAmountNumbers(T failedValue, int length),
    TResult insufficientAge(T failedValue, int min),
    TResult invalidDateFormat(T failedValue, String format),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (shouldContainAmountNumbers != null) {
      return shouldContainAmountNumbers(failedValue, length);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult nan(Nan<T> value),
    @required TResult shouldNotBeEmptyOrNull(ShouldNotBeEmptyOrNull<T> value),
    @required
        TResult shouldContainAmountNumbers(ShouldContainAmountNumbers<T> value),
    @required TResult insufficientAge(InsufficientAge<T> value),
    @required TResult invalidDateFormat(InvalidDateFormat<T> value),
  }) {
    assert(nan != null);
    assert(shouldNotBeEmptyOrNull != null);
    assert(shouldContainAmountNumbers != null);
    assert(insufficientAge != null);
    assert(invalidDateFormat != null);
    return shouldContainAmountNumbers(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult nan(Nan<T> value),
    TResult shouldNotBeEmptyOrNull(ShouldNotBeEmptyOrNull<T> value),
    TResult shouldContainAmountNumbers(ShouldContainAmountNumbers<T> value),
    TResult insufficientAge(InsufficientAge<T> value),
    TResult invalidDateFormat(InvalidDateFormat<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (shouldContainAmountNumbers != null) {
      return shouldContainAmountNumbers(this);
    }
    return orElse();
  }
}

abstract class ShouldContainAmountNumbers<T> implements ValueFailure<T> {
  const factory ShouldContainAmountNumbers(
      {@required T failedValue,
      @required int length}) = _$ShouldContainAmountNumbers<T>;

  @override
  T get failedValue;
  int get length;
  @override
  $ShouldContainAmountNumbersCopyWith<T, ShouldContainAmountNumbers<T>>
      get copyWith;
}

/// @nodoc
abstract class $InsufficientAgeCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $InsufficientAgeCopyWith(
          InsufficientAge<T> value, $Res Function(InsufficientAge<T>) then) =
      _$InsufficientAgeCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue, int min});
}

/// @nodoc
class _$InsufficientAgeCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InsufficientAgeCopyWith<T, $Res> {
  _$InsufficientAgeCopyWithImpl(
      InsufficientAge<T> _value, $Res Function(InsufficientAge<T>) _then)
      : super(_value, (v) => _then(v as InsufficientAge<T>));

  @override
  InsufficientAge<T> get _value => super._value as InsufficientAge<T>;

  @override
  $Res call({
    Object failedValue = freezed,
    Object min = freezed,
  }) {
    return _then(InsufficientAge<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
      min: min == freezed ? _value.min : min as int,
    ));
  }
}

/// @nodoc
class _$InsufficientAge<T>
    with DiagnosticableTreeMixin
    implements InsufficientAge<T> {
  const _$InsufficientAge({@required this.failedValue, @required this.min})
      : assert(failedValue != null),
        assert(min != null);

  @override
  final T failedValue;
  @override
  final int min;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.insufficientAge(failedValue: $failedValue, min: $min)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.insufficientAge'))
      ..add(DiagnosticsProperty('failedValue', failedValue))
      ..add(DiagnosticsProperty('min', min));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InsufficientAge<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)) &&
            (identical(other.min, min) ||
                const DeepCollectionEquality().equals(other.min, min)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failedValue) ^
      const DeepCollectionEquality().hash(min);

  @override
  $InsufficientAgeCopyWith<T, InsufficientAge<T>> get copyWith =>
      _$InsufficientAgeCopyWithImpl<T, InsufficientAge<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult nan(T failedValue),
    @required TResult shouldNotBeEmptyOrNull(T failedValue),
    @required TResult shouldContainAmountNumbers(T failedValue, int length),
    @required TResult insufficientAge(T failedValue, int min),
    @required TResult invalidDateFormat(T failedValue, String format),
  }) {
    assert(nan != null);
    assert(shouldNotBeEmptyOrNull != null);
    assert(shouldContainAmountNumbers != null);
    assert(insufficientAge != null);
    assert(invalidDateFormat != null);
    return insufficientAge(failedValue, min);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult nan(T failedValue),
    TResult shouldNotBeEmptyOrNull(T failedValue),
    TResult shouldContainAmountNumbers(T failedValue, int length),
    TResult insufficientAge(T failedValue, int min),
    TResult invalidDateFormat(T failedValue, String format),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (insufficientAge != null) {
      return insufficientAge(failedValue, min);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult nan(Nan<T> value),
    @required TResult shouldNotBeEmptyOrNull(ShouldNotBeEmptyOrNull<T> value),
    @required
        TResult shouldContainAmountNumbers(ShouldContainAmountNumbers<T> value),
    @required TResult insufficientAge(InsufficientAge<T> value),
    @required TResult invalidDateFormat(InvalidDateFormat<T> value),
  }) {
    assert(nan != null);
    assert(shouldNotBeEmptyOrNull != null);
    assert(shouldContainAmountNumbers != null);
    assert(insufficientAge != null);
    assert(invalidDateFormat != null);
    return insufficientAge(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult nan(Nan<T> value),
    TResult shouldNotBeEmptyOrNull(ShouldNotBeEmptyOrNull<T> value),
    TResult shouldContainAmountNumbers(ShouldContainAmountNumbers<T> value),
    TResult insufficientAge(InsufficientAge<T> value),
    TResult invalidDateFormat(InvalidDateFormat<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (insufficientAge != null) {
      return insufficientAge(this);
    }
    return orElse();
  }
}

abstract class InsufficientAge<T> implements ValueFailure<T> {
  const factory InsufficientAge({@required T failedValue, @required int min}) =
      _$InsufficientAge<T>;

  @override
  T get failedValue;
  int get min;
  @override
  $InsufficientAgeCopyWith<T, InsufficientAge<T>> get copyWith;
}

/// @nodoc
abstract class $InvalidDateFormatCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidDateFormatCopyWith(InvalidDateFormat<T> value,
          $Res Function(InvalidDateFormat<T>) then) =
      _$InvalidDateFormatCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue, String format});
}

/// @nodoc
class _$InvalidDateFormatCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidDateFormatCopyWith<T, $Res> {
  _$InvalidDateFormatCopyWithImpl(
      InvalidDateFormat<T> _value, $Res Function(InvalidDateFormat<T>) _then)
      : super(_value, (v) => _then(v as InvalidDateFormat<T>));

  @override
  InvalidDateFormat<T> get _value => super._value as InvalidDateFormat<T>;

  @override
  $Res call({
    Object failedValue = freezed,
    Object format = freezed,
  }) {
    return _then(InvalidDateFormat<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
      format: format == freezed ? _value.format : format as String,
    ));
  }
}

/// @nodoc
class _$InvalidDateFormat<T>
    with DiagnosticableTreeMixin
    implements InvalidDateFormat<T> {
  const _$InvalidDateFormat({@required this.failedValue, @required this.format})
      : assert(failedValue != null),
        assert(format != null);

  @override
  final T failedValue;
  @override
  final String format;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.invalidDateFormat(failedValue: $failedValue, format: $format)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.invalidDateFormat'))
      ..add(DiagnosticsProperty('failedValue', failedValue))
      ..add(DiagnosticsProperty('format', format));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidDateFormat<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)) &&
            (identical(other.format, format) ||
                const DeepCollectionEquality().equals(other.format, format)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failedValue) ^
      const DeepCollectionEquality().hash(format);

  @override
  $InvalidDateFormatCopyWith<T, InvalidDateFormat<T>> get copyWith =>
      _$InvalidDateFormatCopyWithImpl<T, InvalidDateFormat<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult nan(T failedValue),
    @required TResult shouldNotBeEmptyOrNull(T failedValue),
    @required TResult shouldContainAmountNumbers(T failedValue, int length),
    @required TResult insufficientAge(T failedValue, int min),
    @required TResult invalidDateFormat(T failedValue, String format),
  }) {
    assert(nan != null);
    assert(shouldNotBeEmptyOrNull != null);
    assert(shouldContainAmountNumbers != null);
    assert(insufficientAge != null);
    assert(invalidDateFormat != null);
    return invalidDateFormat(failedValue, format);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult nan(T failedValue),
    TResult shouldNotBeEmptyOrNull(T failedValue),
    TResult shouldContainAmountNumbers(T failedValue, int length),
    TResult insufficientAge(T failedValue, int min),
    TResult invalidDateFormat(T failedValue, String format),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidDateFormat != null) {
      return invalidDateFormat(failedValue, format);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult nan(Nan<T> value),
    @required TResult shouldNotBeEmptyOrNull(ShouldNotBeEmptyOrNull<T> value),
    @required
        TResult shouldContainAmountNumbers(ShouldContainAmountNumbers<T> value),
    @required TResult insufficientAge(InsufficientAge<T> value),
    @required TResult invalidDateFormat(InvalidDateFormat<T> value),
  }) {
    assert(nan != null);
    assert(shouldNotBeEmptyOrNull != null);
    assert(shouldContainAmountNumbers != null);
    assert(insufficientAge != null);
    assert(invalidDateFormat != null);
    return invalidDateFormat(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult nan(Nan<T> value),
    TResult shouldNotBeEmptyOrNull(ShouldNotBeEmptyOrNull<T> value),
    TResult shouldContainAmountNumbers(ShouldContainAmountNumbers<T> value),
    TResult insufficientAge(InsufficientAge<T> value),
    TResult invalidDateFormat(InvalidDateFormat<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidDateFormat != null) {
      return invalidDateFormat(this);
    }
    return orElse();
  }
}

abstract class InvalidDateFormat<T> implements ValueFailure<T> {
  const factory InvalidDateFormat(
      {@required T failedValue,
      @required String format}) = _$InvalidDateFormat<T>;

  @override
  T get failedValue;
  String get format;
  @override
  $InvalidDateFormatCopyWith<T, InvalidDateFormat<T>> get copyWith;
}
