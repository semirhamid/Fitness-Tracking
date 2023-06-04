import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:fitnesstracker/domain/core/failures.dart';

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const emailRegex =
      r'^[\w-]+(\.[\w-]+)*@([a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*\.)+[a-zA-Z]{2,7}$';
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmail(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  if (input.length >= 6) {
    return right(input);
  } else {
    return left(ValueFailure.shortPassword(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateName(String input) {
  if (input.length >= 6) {
    return right(input);
  } else {
    return left(ValueFailure.shortName(failedValue: input, max: 6));
  }
}

Either<ValueFailure<String>, String> validateImage(File input) {
  const int maxSize = 6 * 1024 * 1024; // 6 MB in bytes

  if (input.lengthSync() <= maxSize) {
    return right(input.path);
  } else {
    return left(ValueFailure<String>.invalidImage(failedImage: input));
  }
}

Either<ValueFailure<String>, String> validateToken(String input) {
  if (input.length >= 6) {
    return right(input);
  } else {
    return left(ValueFailure.empty(failedValue: input));
  }
}


Either<ValueFailure<List<String>>, List<String>> validateRole(List<String> input) {
  const List<String> validRoles = ["Admin", "User"];

  for (final role in input) {
    if (!validRoles.contains(role)) {
      return left(ValueFailure.invalidRole(failedValue: input));
    }
  }

  return right(input);
}

Either<ValueFailure<String>, String> validateCategory(
    String input, List<String> categories) {
  if (categories.contains(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidCategory(failedValue: input));
  }
}
