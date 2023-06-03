
import 'package:freezed_annotation/freezed_annotation.dart';

part 'single_user_data.freezed.dart';
part 'single_user_data.g.dart';
@freezed
abstract class SingleUserData  with _$SingleUserData{
  const factory SingleUserData({
    required int planTypeId,
    required int day,
    required int workoutId,
    required int? step,
    required int? duration,
  }) = _SingleUserData;

  factory SingleUserData.fromJson(Map<String, dynamic> json) =>
      _$SingleUserDataFromJson(json);
  
  factory SingleUserData.toDomain(SingleUserData dto) => SingleUserData(
        planTypeId: dto.planTypeId,
        day: dto.day,
        workoutId: dto.workoutId,
        step: dto.step,
        duration: dto.duration,
      );
}
