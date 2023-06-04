import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:fitnesstracker/domain/core/failures.dart';
import 'package:fitnesstracker/domain/core/value_objects.dart';
import 'package:fitnesstracker/domain/core/value_validators.dart';

import '../workouts/value_validators.dart';


class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    assert(input != null);
    return EmailAddress._(
      validateEmailAddress(input),
    );
  }

  const EmailAddress._(this.value);
}

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    assert(input != null);
    return Password._(
      validatePassword(input),
    );
  }

  const Password._(this.value);
}

class Name extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Name(String input) {
    assert(input != null);
    return Name._(
      validateName(input),
    );
  }

  const Name._(this.value);
}

class Title extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Title(String input) {
    assert(input != null);
    return Title._(
      validateTitle(input),
    );
  }

  const Title._(this.value);
}

class Description extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Description(String input) {
    assert(input != null);
    return Description._(
      validateDescription(input),
    );
  }

  const Description._(this.value);
}


class Image extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Image(File input) {
    assert(input != null);
    return Image._(validateImage(input));
  }

  const Image._(this.value);
}

class Token extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Token(String input) {
    assert(input != null);
    return Token._(
      validateToken(input),
    );
  }

  const Token._(this.value);
}

class RefreshToken extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory RefreshToken(String input) {
    assert(input != null);
    return RefreshToken._(
      validateToken(input),
    );
  }

  const RefreshToken._(this.value);
}

class UserId extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory UserId(String input) {
    assert(input != null);
    return UserId._(
      validateName(input),
    );
  }

  const UserId._(this.value);
}

class Role extends ValueObject<List<String>> {
  @override
  final Either<ValueFailure<List<String>>, List<String>> value;

  factory Role(List<String> input) {
    assert(input != null);
    return Role._(
      validateRole(input),
    );
  }

  const Role._(this.value);
}

class MealCategory extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const List<String> mealCategories = [
    "BREAKFAST",
    "LUNCH",
    "SNACK",
    "DINNER"
  ];

  factory MealCategory(String input) {
    return MealCategory._(validateCategory(input, mealCategories));
  }

  const MealCategory._(this.value);
}
