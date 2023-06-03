import 'package:freezed_annotation/freezed_annotation.dart';

part 'plan.freezed.dart';

@freezed
abstract class Plan with _$Plan {
  const factory Plan({
    required int planId,
    required String title,
    required String description,
    required String level,
    required String imageUrl,
  }) = _Plan;
}
