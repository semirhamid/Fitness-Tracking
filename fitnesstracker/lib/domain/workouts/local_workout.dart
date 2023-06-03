import 'package:freezed_annotation/freezed_annotation.dart';


part 'local_workout.freezed.dart';
part 'local_workout.g.dart';

@freezed
abstract class WorkoutLocal with _$WorkoutLocal {
  const factory WorkoutLocal({
    required int id,
    required String name,
    required String description,
    required int duration,
    required int step,
    required String focus,
    required String image1Url,
    required String image2Url,
  }) = _WorkoutLocal;

  factory WorkoutLocal.fromJson(Map<String, dynamic> json) =>
      _$WorkoutLocalFromJson(json);
  
  factory WorkoutLocal.fromMap(Map<String, dynamic> map) {
    return WorkoutLocal(
      id: map['id'],
      name: map['Title'],
      description: map['Description'],
      duration: map['Duration'],
      step: map['Step'],
      focus: map['Focus'],
      image1Url: map['Image1Url'],
      image2Url: map['Image2Url'],
    );
  }


}
