
import 'package:freezed_annotation/freezed_annotation.dart';

part 'diet_dto.freezed.dart';
part 'diet_dto.g.dart';

@freezed
abstract class DietDto implements _$DietDto {
  const factory DietDto({
    required int id,
    required String mealType,
    required String mealName,
    required String mealDescription,
    required String imageUrl,
  }) = _DietDto;

  factory DietDto.fromJson(Map<String, dynamic> json) =>
      _$DietDtoFromJson(json);
}
