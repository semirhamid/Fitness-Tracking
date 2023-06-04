import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'failures.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.shortName({
    required T failedValue,
    int? max,
  }) = ShortName<T>;

  const factory ValueFailure.invalidEmail({
    required T failedValue,
  }) = InvalidEmail<T>;

  const factory ValueFailure.shortPassword({
    required T failedValue,
  }) = ShortPassword<T>;

  const factory ValueFailure.exceedingLine({
    required T failedValue,
  }) = ExceedingLine<T>;
  const factory ValueFailure.empty({
    required T failedValue,
  }) = Empty<T>;
  const factory ValueFailure.nonExistentFocus({
    required T failedValue,
  }) = NonExistentFocus<T>;
  const factory ValueFailure.invalidImage({
    required File failedImage,
  }) = InvalidImage<T>;
  const factory ValueFailure.invalidRole({
    required List<String> failedValue,
  }) = InvalidRole<T>;
  const factory ValueFailure.invalidCategory({
    required String failedValue,
  }) = InvalidCategory<T>;
}

