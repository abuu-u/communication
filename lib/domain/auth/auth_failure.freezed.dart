// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'auth_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AuthFailureTearOff {
  const _$AuthFailureTearOff();

// ignore: unused_element
  ServerError serverError() {
    return const ServerError();
  }

// ignore: unused_element
  InvalidPhoneNumber invalidPhoneNumber() {
    return const InvalidPhoneNumber();
  }

// ignore: unused_element
  InvalidVerificationCode invalidVerificationCode() {
    return const InvalidVerificationCode();
  }

// ignore: unused_element
  CodeExpired codeExpired() {
    return const CodeExpired();
  }

// ignore: unused_element
  IndividualTaxpayerNumberAlreadyInUse individualTaxpayerNumberAlreadyInUse() {
    return const IndividualTaxpayerNumberAlreadyInUse();
  }
}

/// @nodoc
// ignore: unused_element
const $AuthFailure = _$AuthFailureTearOff();

/// @nodoc
mixin _$AuthFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult serverError(),
    @required TResult invalidPhoneNumber(),
    @required TResult invalidVerificationCode(),
    @required TResult codeExpired(),
    @required TResult individualTaxpayerNumberAlreadyInUse(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult serverError(),
    TResult invalidPhoneNumber(),
    TResult invalidVerificationCode(),
    TResult codeExpired(),
    TResult individualTaxpayerNumberAlreadyInUse(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult serverError(ServerError value),
    @required TResult invalidPhoneNumber(InvalidPhoneNumber value),
    @required TResult invalidVerificationCode(InvalidVerificationCode value),
    @required TResult codeExpired(CodeExpired value),
    @required
        TResult individualTaxpayerNumberAlreadyInUse(
            IndividualTaxpayerNumberAlreadyInUse value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult serverError(ServerError value),
    TResult invalidPhoneNumber(InvalidPhoneNumber value),
    TResult invalidVerificationCode(InvalidVerificationCode value),
    TResult codeExpired(CodeExpired value),
    TResult individualTaxpayerNumberAlreadyInUse(
        IndividualTaxpayerNumberAlreadyInUse value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthFailureCopyWithImpl<$Res> implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  final AuthFailure _value;
  // ignore: unused_field
  final $Res Function(AuthFailure) _then;
}

/// @nodoc
abstract class $ServerErrorCopyWith<$Res> {
  factory $ServerErrorCopyWith(
          ServerError value, $Res Function(ServerError) then) =
      _$ServerErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$ServerErrorCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements $ServerErrorCopyWith<$Res> {
  _$ServerErrorCopyWithImpl(
      ServerError _value, $Res Function(ServerError) _then)
      : super(_value, (v) => _then(v as ServerError));

  @override
  ServerError get _value => super._value as ServerError;
}

/// @nodoc
class _$ServerError implements ServerError {
  const _$ServerError();

  @override
  String toString() {
    return 'AuthFailure.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult serverError(),
    @required TResult invalidPhoneNumber(),
    @required TResult invalidVerificationCode(),
    @required TResult codeExpired(),
    @required TResult individualTaxpayerNumberAlreadyInUse(),
  }) {
    assert(serverError != null);
    assert(invalidPhoneNumber != null);
    assert(invalidVerificationCode != null);
    assert(codeExpired != null);
    assert(individualTaxpayerNumberAlreadyInUse != null);
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult serverError(),
    TResult invalidPhoneNumber(),
    TResult invalidVerificationCode(),
    TResult codeExpired(),
    TResult individualTaxpayerNumberAlreadyInUse(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult serverError(ServerError value),
    @required TResult invalidPhoneNumber(InvalidPhoneNumber value),
    @required TResult invalidVerificationCode(InvalidVerificationCode value),
    @required TResult codeExpired(CodeExpired value),
    @required
        TResult individualTaxpayerNumberAlreadyInUse(
            IndividualTaxpayerNumberAlreadyInUse value),
  }) {
    assert(serverError != null);
    assert(invalidPhoneNumber != null);
    assert(invalidVerificationCode != null);
    assert(codeExpired != null);
    assert(individualTaxpayerNumberAlreadyInUse != null);
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult serverError(ServerError value),
    TResult invalidPhoneNumber(InvalidPhoneNumber value),
    TResult invalidVerificationCode(InvalidVerificationCode value),
    TResult codeExpired(CodeExpired value),
    TResult individualTaxpayerNumberAlreadyInUse(
        IndividualTaxpayerNumberAlreadyInUse value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements AuthFailure {
  const factory ServerError() = _$ServerError;
}

/// @nodoc
abstract class $InvalidPhoneNumberCopyWith<$Res> {
  factory $InvalidPhoneNumberCopyWith(
          InvalidPhoneNumber value, $Res Function(InvalidPhoneNumber) then) =
      _$InvalidPhoneNumberCopyWithImpl<$Res>;
}

/// @nodoc
class _$InvalidPhoneNumberCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $InvalidPhoneNumberCopyWith<$Res> {
  _$InvalidPhoneNumberCopyWithImpl(
      InvalidPhoneNumber _value, $Res Function(InvalidPhoneNumber) _then)
      : super(_value, (v) => _then(v as InvalidPhoneNumber));

  @override
  InvalidPhoneNumber get _value => super._value as InvalidPhoneNumber;
}

/// @nodoc
class _$InvalidPhoneNumber implements InvalidPhoneNumber {
  const _$InvalidPhoneNumber();

  @override
  String toString() {
    return 'AuthFailure.invalidPhoneNumber()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InvalidPhoneNumber);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult serverError(),
    @required TResult invalidPhoneNumber(),
    @required TResult invalidVerificationCode(),
    @required TResult codeExpired(),
    @required TResult individualTaxpayerNumberAlreadyInUse(),
  }) {
    assert(serverError != null);
    assert(invalidPhoneNumber != null);
    assert(invalidVerificationCode != null);
    assert(codeExpired != null);
    assert(individualTaxpayerNumberAlreadyInUse != null);
    return invalidPhoneNumber();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult serverError(),
    TResult invalidPhoneNumber(),
    TResult invalidVerificationCode(),
    TResult codeExpired(),
    TResult individualTaxpayerNumberAlreadyInUse(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidPhoneNumber != null) {
      return invalidPhoneNumber();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult serverError(ServerError value),
    @required TResult invalidPhoneNumber(InvalidPhoneNumber value),
    @required TResult invalidVerificationCode(InvalidVerificationCode value),
    @required TResult codeExpired(CodeExpired value),
    @required
        TResult individualTaxpayerNumberAlreadyInUse(
            IndividualTaxpayerNumberAlreadyInUse value),
  }) {
    assert(serverError != null);
    assert(invalidPhoneNumber != null);
    assert(invalidVerificationCode != null);
    assert(codeExpired != null);
    assert(individualTaxpayerNumberAlreadyInUse != null);
    return invalidPhoneNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult serverError(ServerError value),
    TResult invalidPhoneNumber(InvalidPhoneNumber value),
    TResult invalidVerificationCode(InvalidVerificationCode value),
    TResult codeExpired(CodeExpired value),
    TResult individualTaxpayerNumberAlreadyInUse(
        IndividualTaxpayerNumberAlreadyInUse value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidPhoneNumber != null) {
      return invalidPhoneNumber(this);
    }
    return orElse();
  }
}

abstract class InvalidPhoneNumber implements AuthFailure {
  const factory InvalidPhoneNumber() = _$InvalidPhoneNumber;
}

/// @nodoc
abstract class $InvalidVerificationCodeCopyWith<$Res> {
  factory $InvalidVerificationCodeCopyWith(InvalidVerificationCode value,
          $Res Function(InvalidVerificationCode) then) =
      _$InvalidVerificationCodeCopyWithImpl<$Res>;
}

/// @nodoc
class _$InvalidVerificationCodeCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $InvalidVerificationCodeCopyWith<$Res> {
  _$InvalidVerificationCodeCopyWithImpl(InvalidVerificationCode _value,
      $Res Function(InvalidVerificationCode) _then)
      : super(_value, (v) => _then(v as InvalidVerificationCode));

  @override
  InvalidVerificationCode get _value => super._value as InvalidVerificationCode;
}

/// @nodoc
class _$InvalidVerificationCode implements InvalidVerificationCode {
  const _$InvalidVerificationCode();

  @override
  String toString() {
    return 'AuthFailure.invalidVerificationCode()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InvalidVerificationCode);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult serverError(),
    @required TResult invalidPhoneNumber(),
    @required TResult invalidVerificationCode(),
    @required TResult codeExpired(),
    @required TResult individualTaxpayerNumberAlreadyInUse(),
  }) {
    assert(serverError != null);
    assert(invalidPhoneNumber != null);
    assert(invalidVerificationCode != null);
    assert(codeExpired != null);
    assert(individualTaxpayerNumberAlreadyInUse != null);
    return invalidVerificationCode();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult serverError(),
    TResult invalidPhoneNumber(),
    TResult invalidVerificationCode(),
    TResult codeExpired(),
    TResult individualTaxpayerNumberAlreadyInUse(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidVerificationCode != null) {
      return invalidVerificationCode();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult serverError(ServerError value),
    @required TResult invalidPhoneNumber(InvalidPhoneNumber value),
    @required TResult invalidVerificationCode(InvalidVerificationCode value),
    @required TResult codeExpired(CodeExpired value),
    @required
        TResult individualTaxpayerNumberAlreadyInUse(
            IndividualTaxpayerNumberAlreadyInUse value),
  }) {
    assert(serverError != null);
    assert(invalidPhoneNumber != null);
    assert(invalidVerificationCode != null);
    assert(codeExpired != null);
    assert(individualTaxpayerNumberAlreadyInUse != null);
    return invalidVerificationCode(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult serverError(ServerError value),
    TResult invalidPhoneNumber(InvalidPhoneNumber value),
    TResult invalidVerificationCode(InvalidVerificationCode value),
    TResult codeExpired(CodeExpired value),
    TResult individualTaxpayerNumberAlreadyInUse(
        IndividualTaxpayerNumberAlreadyInUse value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidVerificationCode != null) {
      return invalidVerificationCode(this);
    }
    return orElse();
  }
}

abstract class InvalidVerificationCode implements AuthFailure {
  const factory InvalidVerificationCode() = _$InvalidVerificationCode;
}

/// @nodoc
abstract class $CodeExpiredCopyWith<$Res> {
  factory $CodeExpiredCopyWith(
          CodeExpired value, $Res Function(CodeExpired) then) =
      _$CodeExpiredCopyWithImpl<$Res>;
}

/// @nodoc
class _$CodeExpiredCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements $CodeExpiredCopyWith<$Res> {
  _$CodeExpiredCopyWithImpl(
      CodeExpired _value, $Res Function(CodeExpired) _then)
      : super(_value, (v) => _then(v as CodeExpired));

  @override
  CodeExpired get _value => super._value as CodeExpired;
}

/// @nodoc
class _$CodeExpired implements CodeExpired {
  const _$CodeExpired();

  @override
  String toString() {
    return 'AuthFailure.codeExpired()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CodeExpired);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult serverError(),
    @required TResult invalidPhoneNumber(),
    @required TResult invalidVerificationCode(),
    @required TResult codeExpired(),
    @required TResult individualTaxpayerNumberAlreadyInUse(),
  }) {
    assert(serverError != null);
    assert(invalidPhoneNumber != null);
    assert(invalidVerificationCode != null);
    assert(codeExpired != null);
    assert(individualTaxpayerNumberAlreadyInUse != null);
    return codeExpired();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult serverError(),
    TResult invalidPhoneNumber(),
    TResult invalidVerificationCode(),
    TResult codeExpired(),
    TResult individualTaxpayerNumberAlreadyInUse(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (codeExpired != null) {
      return codeExpired();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult serverError(ServerError value),
    @required TResult invalidPhoneNumber(InvalidPhoneNumber value),
    @required TResult invalidVerificationCode(InvalidVerificationCode value),
    @required TResult codeExpired(CodeExpired value),
    @required
        TResult individualTaxpayerNumberAlreadyInUse(
            IndividualTaxpayerNumberAlreadyInUse value),
  }) {
    assert(serverError != null);
    assert(invalidPhoneNumber != null);
    assert(invalidVerificationCode != null);
    assert(codeExpired != null);
    assert(individualTaxpayerNumberAlreadyInUse != null);
    return codeExpired(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult serverError(ServerError value),
    TResult invalidPhoneNumber(InvalidPhoneNumber value),
    TResult invalidVerificationCode(InvalidVerificationCode value),
    TResult codeExpired(CodeExpired value),
    TResult individualTaxpayerNumberAlreadyInUse(
        IndividualTaxpayerNumberAlreadyInUse value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (codeExpired != null) {
      return codeExpired(this);
    }
    return orElse();
  }
}

abstract class CodeExpired implements AuthFailure {
  const factory CodeExpired() = _$CodeExpired;
}

/// @nodoc
abstract class $IndividualTaxpayerNumberAlreadyInUseCopyWith<$Res> {
  factory $IndividualTaxpayerNumberAlreadyInUseCopyWith(
          IndividualTaxpayerNumberAlreadyInUse value,
          $Res Function(IndividualTaxpayerNumberAlreadyInUse) then) =
      _$IndividualTaxpayerNumberAlreadyInUseCopyWithImpl<$Res>;
}

/// @nodoc
class _$IndividualTaxpayerNumberAlreadyInUseCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $IndividualTaxpayerNumberAlreadyInUseCopyWith<$Res> {
  _$IndividualTaxpayerNumberAlreadyInUseCopyWithImpl(
      IndividualTaxpayerNumberAlreadyInUse _value,
      $Res Function(IndividualTaxpayerNumberAlreadyInUse) _then)
      : super(_value, (v) => _then(v as IndividualTaxpayerNumberAlreadyInUse));

  @override
  IndividualTaxpayerNumberAlreadyInUse get _value =>
      super._value as IndividualTaxpayerNumberAlreadyInUse;
}

/// @nodoc
class _$IndividualTaxpayerNumberAlreadyInUse
    implements IndividualTaxpayerNumberAlreadyInUse {
  const _$IndividualTaxpayerNumberAlreadyInUse();

  @override
  String toString() {
    return 'AuthFailure.individualTaxpayerNumberAlreadyInUse()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is IndividualTaxpayerNumberAlreadyInUse);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult serverError(),
    @required TResult invalidPhoneNumber(),
    @required TResult invalidVerificationCode(),
    @required TResult codeExpired(),
    @required TResult individualTaxpayerNumberAlreadyInUse(),
  }) {
    assert(serverError != null);
    assert(invalidPhoneNumber != null);
    assert(invalidVerificationCode != null);
    assert(codeExpired != null);
    assert(individualTaxpayerNumberAlreadyInUse != null);
    return individualTaxpayerNumberAlreadyInUse();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult serverError(),
    TResult invalidPhoneNumber(),
    TResult invalidVerificationCode(),
    TResult codeExpired(),
    TResult individualTaxpayerNumberAlreadyInUse(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (individualTaxpayerNumberAlreadyInUse != null) {
      return individualTaxpayerNumberAlreadyInUse();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult serverError(ServerError value),
    @required TResult invalidPhoneNumber(InvalidPhoneNumber value),
    @required TResult invalidVerificationCode(InvalidVerificationCode value),
    @required TResult codeExpired(CodeExpired value),
    @required
        TResult individualTaxpayerNumberAlreadyInUse(
            IndividualTaxpayerNumberAlreadyInUse value),
  }) {
    assert(serverError != null);
    assert(invalidPhoneNumber != null);
    assert(invalidVerificationCode != null);
    assert(codeExpired != null);
    assert(individualTaxpayerNumberAlreadyInUse != null);
    return individualTaxpayerNumberAlreadyInUse(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult serverError(ServerError value),
    TResult invalidPhoneNumber(InvalidPhoneNumber value),
    TResult invalidVerificationCode(InvalidVerificationCode value),
    TResult codeExpired(CodeExpired value),
    TResult individualTaxpayerNumberAlreadyInUse(
        IndividualTaxpayerNumberAlreadyInUse value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (individualTaxpayerNumberAlreadyInUse != null) {
      return individualTaxpayerNumberAlreadyInUse(this);
    }
    return orElse();
  }
}

abstract class IndividualTaxpayerNumberAlreadyInUse implements AuthFailure {
  const factory IndividualTaxpayerNumberAlreadyInUse() =
      _$IndividualTaxpayerNumberAlreadyInUse;
}
