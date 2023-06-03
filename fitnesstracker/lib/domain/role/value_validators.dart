import 'package:dartz/dartz.dart';
import 'package:flutter/widgets.dart';

import '../core/failures.dart';

Either<ValueFailure<String>, String> validateRole(String input) {
  if (input.length >= 3) {
    return right(input);
  } else {
    return left(ValueFailure.shortName(failedValue: input, max: 6));
  }
}
