import 'package:communication/domain/core/failures.dart';
import 'package:communication/domain/core/value_objects.dart';
import 'package:communication/domain/core/value_validators.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

class AppLanguage extends ValueObject<Locale> {
  @override
  final Either<ValueFailure<Locale>, Locale> value;

  static const isRequired = true;

  factory AppLanguage(Locale input) {
    assert(input != null);
    return AppLanguage._(
      validate(input),
    );
  }

  const AppLanguage._(this.value);
}

class Name extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const isRequired = true;

  factory Name(String input) {
    assert(input != null);
    return Name._(
      validate(input),
    );
  }

  const Name._(this.value);
}

class BirthDate extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const minAge = 20;
  static const mask = '##/##/####';
  static const format = 'dd/MM/yyyy';
  static const hint = '31/12/2020';
  static const isRequired = true;

  factory BirthDate(String input) {
    assert(input != null);
    return BirthDate._(
      validate(input).flatMap((e) => validateBirthDate(input, minAge, format)),
    );
  }

  const BirthDate._(this.value);
}

class City extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const List<String> availableCities = [
    'tashkent',
  ];
  static const isRequired = true;

  factory City(String input) {
    assert(input != null);
    return City._(
      validate(input),
    );
  }

  const City._(this.value);
}

class PhoneNumber extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const phoneNumberLength = 9;
  static const countryCode = '+998';
  static const mask = '(##) ###-##-##';
  static const hint = '(99) 999-99-99';
  static const isRequired = true;

  factory PhoneNumber(String input) {
    assert(input != null);
    return PhoneNumber._(
      validate(input)
          .flatMap((e) => validateNumberLength(input, phoneNumberLength)),
    );
  }

  const PhoneNumber._(this.value);
}

class VerificationCode extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const verificationCodeLength = 6;
  static const isRequired = true;

  factory VerificationCode(String input) {
    assert(input != null);
    return VerificationCode._(
      validate(input)
          .flatMap((e) => validateNumberLength(input, verificationCodeLength)),
    );
  }

  const VerificationCode._(this.value);
}

class Gender extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const List<String> availableGenders = [
    'male',
    'female',
  ];
  static const isRequired = true;

  factory Gender(String input) {
    assert(input != null);
    return Gender._(
      validate(input),
    );
  }

  const Gender._(this.value);
}

class IndividualTaxpayerNumber extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const itnLength = 9;
  static const isRequired = false;

  factory IndividualTaxpayerNumber(String input) {
    assert(input != null);
    return IndividualTaxpayerNumber._(
      validate(input, isRequired: isRequired).flatMap((e) =>
          validateNumberLength(input, itnLength, isRequired: isRequired)),
    );
  }

  const IndividualTaxpayerNumber._(this.value);
}
