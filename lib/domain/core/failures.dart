import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'failures.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.nan({
    @required T failedValue,
  }) = Nan<T>;
  const factory ValueFailure.shouldNotBeEmptyOrNull({
    @required T failedValue,
  }) = ShouldNotBeEmptyOrNull<T>;
  const factory ValueFailure.shouldContainAmountNumbers({
    @required T failedValue,
    @required int length,
  }) = ShouldContainAmountNumbers<T>;
  const factory ValueFailure.insufficientAge({
    @required T failedValue,
    @required int min,
  }) = InsufficientAge<T>;
  const factory ValueFailure.invalidDateFormat({
    @required T failedValue,
    @required String format,
  }) = InvalidDateFormat<T>;
}
