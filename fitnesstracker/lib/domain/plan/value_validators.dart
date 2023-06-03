import 'package:dartz/dartz.dart';
import 'package:flutter/widgets.dart';

import '../core/failures.dart';

Either<ValueFailure<String>, String> validatePlan(String input) {
  if (input.length >= 6) {
    return right(input);
  } else {
    return left(ValueFailure.shortName(failedValue: input, max: 6));
  }
}

Either<ValueFailure<String>, String> validateDescription(String input) {
  if (input.length >= 6) {
    return right(input);
  } else {
    return left(ValueFailure.shortName(failedValue: input, max: 6));
  }
}
