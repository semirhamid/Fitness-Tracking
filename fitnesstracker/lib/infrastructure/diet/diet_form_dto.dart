
import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'diet_form_dto.freezed.dart';

@freezed
abstract class DietFormDto implements _$DietFormDto {
  const factory DietFormDto({
    required int id,
    required String mealType,
    required String mealName,
    required String mealDescription,
    required File? imageUrl,
  }) = _DietDto;
}
