import 'package:freezed_annotation/freezed_annotation.dart';

import '../core/validate_object.dart';
import '../core/value_objects.dart';

part 'workout.freezed.dart';

@freezed
abstract class Workout with _$Workout {
  const factory Workout({
    required UniqueId id,
    required Title name,
    required Description description,
    required int duration,
    required int step,
    required String focus,
    required Image image1Url,
    required Image image2Url,
  }) = _Workout;
}
