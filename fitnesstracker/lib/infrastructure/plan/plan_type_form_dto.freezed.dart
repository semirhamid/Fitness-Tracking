// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plan_type_form_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlanTypeFormDto _$PlanTypeFormDtoFromJson(Map<String, dynamic> json) {
  return _PlanTypeDto.fromJson(json);
}

/// @nodoc
mixin _$PlanTypeFormDto {
  int get planId => throw _privateConstructorUsedError;
  int get day => throw _privateConstructorUsedError;
  List<int> get dietIds => throw _privateConstructorUsedError;
  List<int> get workoutIds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlanTypeFormDtoCopyWith<PlanTypeFormDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlanTypeFormDtoCopyWith<$Res> {
  factory $PlanTypeFormDtoCopyWith(
          PlanTypeFormDto value, $Res Function(PlanTypeFormDto) then) =
      _$PlanTypeFormDtoCopyWithImpl<$Res, PlanTypeFormDto>;
  @useResult
  $Res call({int planId, int day, List<int> dietIds, List<int> workoutIds});
}

/// @nodoc
class _$PlanTypeFormDtoCopyWithImpl<$Res, $Val extends PlanTypeFormDto>
    implements $PlanTypeFormDtoCopyWith<$Res> {
  _$PlanTypeFormDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? planId = null,
    Object? day = null,
    Object? dietIds = null,
    Object? workoutIds = null,
  }) {
    return _then(_value.copyWith(
      planId: null == planId
          ? _value.planId
          : planId // ignore: cast_nullable_to_non_nullable
              as int,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int,
      dietIds: null == dietIds
          ? _value.dietIds
          : dietIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      workoutIds: null == workoutIds
          ? _value.workoutIds
          : workoutIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PlanTypeDtoCopyWith<$Res>
    implements $PlanTypeFormDtoCopyWith<$Res> {
  factory _$$_PlanTypeDtoCopyWith(
          _$_PlanTypeDto value, $Res Function(_$_PlanTypeDto) then) =
      __$$_PlanTypeDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int planId, int day, List<int> dietIds, List<int> workoutIds});
}

/// @nodoc
class __$$_PlanTypeDtoCopyWithImpl<$Res>
    extends _$PlanTypeFormDtoCopyWithImpl<$Res, _$_PlanTypeDto>
    implements _$$_PlanTypeDtoCopyWith<$Res> {
  __$$_PlanTypeDtoCopyWithImpl(
      _$_PlanTypeDto _value, $Res Function(_$_PlanTypeDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? planId = null,
    Object? day = null,
    Object? dietIds = null,
    Object? workoutIds = null,
  }) {
    return _then(_$_PlanTypeDto(
      planId: null == planId
          ? _value.planId
          : planId // ignore: cast_nullable_to_non_nullable
              as int,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int,
      dietIds: null == dietIds
          ? _value._dietIds
          : dietIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      workoutIds: null == workoutIds
          ? _value._workoutIds
          : workoutIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PlanTypeDto implements _PlanTypeDto {
  const _$_PlanTypeDto(
      {required this.planId,
      required this.day,
      required final List<int> dietIds,
      required final List<int> workoutIds})
      : _dietIds = dietIds,
        _workoutIds = workoutIds;

  factory _$_PlanTypeDto.fromJson(Map<String, dynamic> json) =>
      _$$_PlanTypeDtoFromJson(json);

  @override
  final int planId;
  @override
  final int day;
  final List<int> _dietIds;
  @override
  List<int> get dietIds {
    if (_dietIds is EqualUnmodifiableListView) return _dietIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dietIds);
  }

  final List<int> _workoutIds;
  @override
  List<int> get workoutIds {
    if (_workoutIds is EqualUnmodifiableListView) return _workoutIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_workoutIds);
  }

  @override
  String toString() {
    return 'PlanTypeFormDto(planId: $planId, day: $day, dietIds: $dietIds, workoutIds: $workoutIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlanTypeDto &&
            (identical(other.planId, planId) || other.planId == planId) &&
            (identical(other.day, day) || other.day == day) &&
            const DeepCollectionEquality().equals(other._dietIds, _dietIds) &&
            const DeepCollectionEquality()
                .equals(other._workoutIds, _workoutIds));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      planId,
      day,
      const DeepCollectionEquality().hash(_dietIds),
      const DeepCollectionEquality().hash(_workoutIds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlanTypeDtoCopyWith<_$_PlanTypeDto> get copyWith =>
      __$$_PlanTypeDtoCopyWithImpl<_$_PlanTypeDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlanTypeDtoToJson(
      this,
    );
  }
}

abstract class _PlanTypeDto implements PlanTypeFormDto {
  const factory _PlanTypeDto(
      {required final int planId,
      required final int day,
      required final List<int> dietIds,
      required final List<int> workoutIds}) = _$_PlanTypeDto;

  factory _PlanTypeDto.fromJson(Map<String, dynamic> json) =
      _$_PlanTypeDto.fromJson;

  @override
  int get planId;
  @override
  int get day;
  @override
  List<int> get dietIds;
  @override
  List<int> get workoutIds;
  @override
  @JsonKey(ignore: true)
  _$$_PlanTypeDtoCopyWith<_$_PlanTypeDto> get copyWith =>
      throw _privateConstructorUsedError;
}
