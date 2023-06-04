import 'package:freezed_annotation/freezed_annotation.dart';
part 'workout_dto.freezed.dart';
part 'workout_dto.g.dart';

@freezed
abstract class WorkoutDto implements _$WorkoutDto {
  const factory WorkoutDto({
    required int id,
    required String title,
    required String description,
    required int duration,
    required int step,
    required String focus,
    required String image1Url,
    required String image2Url,
  }) = _WorkoutDto;

  factory WorkoutDto.fromJson(Map<String, dynamic> json) =>
      _$WorkoutDtoFromJson(json);

}
