// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'workout_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WorkoutData _$WorkoutDataFromJson(Map<String, dynamic> json) {
  return _WorkoutData.fromJson(json);
}

/// @nodoc
mixin _$WorkoutData {
  int get workoutId => throw _privateConstructorUsedError;
  int get step => throw _privateConstructorUsedError;
  int get duration => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkoutDataCopyWith<WorkoutData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkoutDataCopyWith<$Res> {
  factory $WorkoutDataCopyWith(
          WorkoutData value, $Res Function(WorkoutData) then) =
      _$WorkoutDataCopyWithImpl<$Res, WorkoutData>;
  @useResult
  $Res call({int workoutId, int step, int duration});
}

/// @nodoc
class _$WorkoutDataCopyWithImpl<$Res, $Val extends WorkoutData>
    implements $WorkoutDataCopyWith<$Res> {
  _$WorkoutDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workoutId = null,
    Object? step = null,
    Object? duration = null,
  }) {
    return _then(_value.copyWith(
      workoutId: null == workoutId
          ? _value.workoutId
          : workoutId // ignore: cast_nullable_to_non_nullable
              as int,
      step: null == step
          ? _value.step
          : step // ignore: cast_nullable_to_non_nullable
              as int,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WorkoutDataCopyWith<$Res>
    implements $WorkoutDataCopyWith<$Res> {
  factory _$$_WorkoutDataCopyWith(
          _$_WorkoutData value, $Res Function(_$_WorkoutData) then) =
      __$$_WorkoutDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int workoutId, int step, int duration});
}

/// @nodoc
class __$$_WorkoutDataCopyWithImpl<$Res>
    extends _$WorkoutDataCopyWithImpl<$Res, _$_WorkoutData>
    implements _$$_WorkoutDataCopyWith<$Res> {
  __$$_WorkoutDataCopyWithImpl(
      _$_WorkoutData _value, $Res Function(_$_WorkoutData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workoutId = null,
    Object? step = null,
    Object? duration = null,
  }) {
    return _then(_$_WorkoutData(
      workoutId: null == workoutId
          ? _value.workoutId
          : workoutId // ignore: cast_nullable_to_non_nullable
              as int,
      step: null == step
          ? _value.step
          : step // ignore: cast_nullable_to_non_nullable
              as int,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WorkoutData implements _WorkoutData {
  const _$_WorkoutData(
      {required this.workoutId, required this.step, required this.duration});

  factory _$_WorkoutData.fromJson(Map<String, dynamic> json) =>
      _$$_WorkoutDataFromJson(json);

  @override
  final int workoutId;
  @override
  final int step;
  @override
  final int duration;

  @override
  String toString() {
    return 'WorkoutData(workoutId: $workoutId, step: $step, duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WorkoutData &&
            (identical(other.workoutId, workoutId) ||
                other.workoutId == workoutId) &&
            (identical(other.step, step) || other.step == step) &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, workoutId, step, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WorkoutDataCopyWith<_$_WorkoutData> get copyWith =>
      __$$_WorkoutDataCopyWithImpl<_$_WorkoutData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WorkoutDataToJson(
      this,
    );
  }
}

abstract class _WorkoutData implements WorkoutData {
  const factory _WorkoutData(
      {required final int workoutId,
      required final int step,
      required final int duration}) = _$_WorkoutData;

  factory _WorkoutData.fromJson(Map<String, dynamic> json) =
      _$_WorkoutData.fromJson;

  @override
  int get workoutId;
  @override
  int get step;
  @override
  int get duration;
  @override
  @JsonKey(ignore: true)
  _$$_WorkoutDataCopyWith<_$_WorkoutData> get copyWith =>
      throw _privateConstructorUsedError;
}
