import 'package:dartz/dartz.dart';
import 'package:intl/intl.dart';

import 'failures.dart';

Either<ValueFailure<T>, T> validate<T>(
  T input, {
  bool isRequired = true,
}) {
  final inputIsEmpty =
      input is String && input.isEmpty || input is Iterable && input.isEmpty;

  if ((input == null || inputIsEmpty) && isRequired) {
    return left(ValueFailure.shouldNotBeEmptyOrNull(failedValue: input));
  } else {
    return right(input);
  }
}

Either<ValueFailure<String>, String> validateNumberLength(
  String input,
  int length, {
  bool isRequired = true,
}) {
  if (int.tryParse(input) == null && isRequired) {
    return left(ValueFailure.nan(failedValue: input));
  } else if (input.isNotEmpty && input.length != length) {
    return left(ValueFailure.shouldContainAmountNumbers(
      failedValue: input,
      length: length,
    ));
  }

  return right(input);
}

Either<ValueFailure<String>, String> validateBirthDate(
  String input,
  int minAge,
  String format,
) {
  if (format.length == input.length) {
    final DateTime date = DateFormat(format).parseStrict(input);
    final double diff = DateTime.now().difference(date).inDays / 365.25;

    if (diff >= minAge) {
      return right(date.toIso8601String());
    } else {
      return left(ValueFailure.insufficientAge(
        failedValue: input,
        min: minAge,
      ));
    }
  } else {
    return left(ValueFailure.invalidDateFormat(
      failedValue: input,
      format: format,
    ));
  }
}
