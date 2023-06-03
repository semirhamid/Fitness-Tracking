// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'day_plan_type_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DayPlanTypeDto _$DayPlanTypeDtoFromJson(Map<String, dynamic> json) {
  return _DayPlanTypeDto.fromJson(json);
}

/// @nodoc
mixin _$DayPlanTypeDto {
  List<DietDto> get diets => throw _privateConstructorUsedError;
  List<WorkoutDto> get workouts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DayPlanTypeDtoCopyWith<DayPlanTypeDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DayPlanTypeDtoCopyWith<$Res> {
  factory $DayPlanTypeDtoCopyWith(
          DayPlanTypeDto value, $Res Function(DayPlanTypeDto) then) =
      _$DayPlanTypeDtoCopyWithImpl<$Res, DayPlanTypeDto>;
  @useResult
  $Res call({List<DietDto> diets, List<WorkoutDto> workouts});
}

/// @nodoc
class _$DayPlanTypeDtoCopyWithImpl<$Res, $Val extends DayPlanTypeDto>
    implements $DayPlanTypeDtoCopyWith<$Res> {
  _$DayPlanTypeDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? diets = null,
    Object? workouts = null,
  }) {
    return _then(_value.copyWith(
      diets: null == diets
          ? _value.diets
          : diets // ignore: cast_nullable_to_non_nullable
              as List<DietDto>,
      workouts: null == workouts
          ? _value.workouts
          : workouts // ignore: cast_nullable_to_non_nullable
              as List<WorkoutDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DayPlanTypeDtoCopyWith<$Res>
    implements $DayPlanTypeDtoCopyWith<$Res> {
  factory _$$_DayPlanTypeDtoCopyWith(
          _$_DayPlanTypeDto value, $Res Function(_$_DayPlanTypeDto) then) =
      __$$_DayPlanTypeDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<DietDto> diets, List<WorkoutDto> workouts});
}

/// @nodoc
class __$$_DayPlanTypeDtoCopyWithImpl<$Res>
    extends _$DayPlanTypeDtoCopyWithImpl<$Res, _$_DayPlanTypeDto>
    implements _$$_DayPlanTypeDtoCopyWith<$Res> {
  __$$_DayPlanTypeDtoCopyWithImpl(
      _$_DayPlanTypeDto _value, $Res Function(_$_DayPlanTypeDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? diets = null,
    Object? workouts = null,
  }) {
    return _then(_$_DayPlanTypeDto(
      diets: null == diets
          ? _value._diets
          : diets // ignore: cast_nullable_to_non_nullable
              as List<DietDto>,
      workouts: null == workouts
          ? _value._workouts
          : workouts // ignore: cast_nullable_to_non_nullable
              as List<WorkoutDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DayPlanTypeDto implements _DayPlanTypeDto {
  _$_DayPlanTypeDto(
      {required final List<DietDto> diets,
      required final List<WorkoutDto> workouts})
      : _diets = diets,
        _workouts = workouts;

  factory _$_DayPlanTypeDto.fromJson(Map<String, dynamic> json) =>
      _$$_DayPlanTypeDtoFromJson(json);

  final List<DietDto> _diets;
  @override
  List<DietDto> get diets {
    if (_diets is EqualUnmodifiableListView) return _diets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_diets);
  }

  final List<WorkoutDto> _workouts;
  @override
  List<WorkoutDto> get workouts {
    if (_workouts is EqualUnmodifiableListView) return _workouts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_workouts);
  }

  @override
  String toString() {
    return 'DayPlanTypeDto(diets: $diets, workouts: $workouts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DayPlanTypeDto &&
            const DeepCollectionEquality().equals(other._diets, _diets) &&
            const DeepCollectionEquality().equals(other._workouts, _workouts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_diets),
      const DeepCollectionEquality().hash(_workouts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DayPlanTypeDtoCopyWith<_$_DayPlanTypeDto> get copyWith =>
      __$$_DayPlanTypeDtoCopyWithImpl<_$_DayPlanTypeDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DayPlanTypeDtoToJson(
      this,
    );
  }
}

abstract class _DayPlanTypeDto implements DayPlanTypeDto {
  factory _DayPlanTypeDto(
      {required final List<DietDto> diets,
      required final List<WorkoutDto> workouts}) = _$_DayPlanTypeDto;

  factory _DayPlanTypeDto.fromJson(Map<String, dynamic> json) =
      _$_DayPlanTypeDto.fromJson;

  @override
  List<DietDto> get diets;
  @override
  List<WorkoutDto> get workouts;
  @override
  @JsonKey(ignore: true)
  _$$_DayPlanTypeDtoCopyWith<_$_DayPlanTypeDto> get copyWith =>
      throw _privateConstructorUsedError;
}
