// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'single_user_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SingleUserData _$SingleUserDataFromJson(Map<String, dynamic> json) {
  return _SingleUserData.fromJson(json);
}

/// @nodoc
mixin _$SingleUserData {
  int get planTypeId => throw _privateConstructorUsedError;
  int get day => throw _privateConstructorUsedError;
  int get workoutId => throw _privateConstructorUsedError;
  int? get step => throw _privateConstructorUsedError;
  int? get duration => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SingleUserDataCopyWith<SingleUserData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingleUserDataCopyWith<$Res> {
  factory $SingleUserDataCopyWith(
          SingleUserData value, $Res Function(SingleUserData) then) =
      _$SingleUserDataCopyWithImpl<$Res, SingleUserData>;
  @useResult
  $Res call({int planTypeId, int day, int workoutId, int? step, int? duration});
}

/// @nodoc
class _$SingleUserDataCopyWithImpl<$Res, $Val extends SingleUserData>
    implements $SingleUserDataCopyWith<$Res> {
  _$SingleUserDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? planTypeId = null,
    Object? day = null,
    Object? workoutId = null,
    Object? step = freezed,
    Object? duration = freezed,
  }) {
    return _then(_value.copyWith(
      planTypeId: null == planTypeId
          ? _value.planTypeId
          : planTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int,
      workoutId: null == workoutId
          ? _value.workoutId
          : workoutId // ignore: cast_nullable_to_non_nullable
              as int,
      step: freezed == step
          ? _value.step
          : step // ignore: cast_nullable_to_non_nullable
              as int?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SingleUserDataCopyWith<$Res>
    implements $SingleUserDataCopyWith<$Res> {
  factory _$$_SingleUserDataCopyWith(
          _$_SingleUserData value, $Res Function(_$_SingleUserData) then) =
      __$$_SingleUserDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int planTypeId, int day, int workoutId, int? step, int? duration});
}

/// @nodoc
class __$$_SingleUserDataCopyWithImpl<$Res>
    extends _$SingleUserDataCopyWithImpl<$Res, _$_SingleUserData>
    implements _$$_SingleUserDataCopyWith<$Res> {
  __$$_SingleUserDataCopyWithImpl(
      _$_SingleUserData _value, $Res Function(_$_SingleUserData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? planTypeId = null,
    Object? day = null,
    Object? workoutId = null,
    Object? step = freezed,
    Object? duration = freezed,
  }) {
    return _then(_$_SingleUserData(
      planTypeId: null == planTypeId
          ? _value.planTypeId
          : planTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int,
      workoutId: null == workoutId
          ? _value.workoutId
          : workoutId // ignore: cast_nullable_to_non_nullable
              as int,
      step: freezed == step
          ? _value.step
          : step // ignore: cast_nullable_to_non_nullable
              as int?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SingleUserData implements _SingleUserData {
  const _$_SingleUserData(
      {required this.planTypeId,
      required this.day,
      required this.workoutId,
      required this.step,
      required this.duration});

  factory _$_SingleUserData.fromJson(Map<String, dynamic> json) =>
      _$$_SingleUserDataFromJson(json);

  @override
  final int planTypeId;
  @override
  final int day;
  @override
  final int workoutId;
  @override
  final int? step;
  @override
  final int? duration;

  @override
  String toString() {
    return 'SingleUserData(planTypeId: $planTypeId, day: $day, workoutId: $workoutId, step: $step, duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SingleUserData &&
            (identical(other.planTypeId, planTypeId) ||
                other.planTypeId == planTypeId) &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.workoutId, workoutId) ||
                other.workoutId == workoutId) &&
            (identical(other.step, step) || other.step == step) &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, planTypeId, day, workoutId, step, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SingleUserDataCopyWith<_$_SingleUserData> get copyWith =>
      __$$_SingleUserDataCopyWithImpl<_$_SingleUserData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SingleUserDataToJson(
      this,
    );
  }
}

abstract class _SingleUserData implements SingleUserData {
  const factory _SingleUserData(
      {required final int planTypeId,
      required final int day,
      required final int workoutId,
      required final int? step,
      required final int? duration}) = _$_SingleUserData;

  factory _SingleUserData.fromJson(Map<String, dynamic> json) =
      _$_SingleUserData.fromJson;

  @override
  int get planTypeId;
  @override
  int get day;
  @override
  int get workoutId;
  @override
  int? get step;
  @override
  int? get duration;
  @override
  @JsonKey(ignore: true)
  _$$_SingleUserDataCopyWith<_$_SingleUserData> get copyWith =>
      throw _privateConstructorUsedError;
}
