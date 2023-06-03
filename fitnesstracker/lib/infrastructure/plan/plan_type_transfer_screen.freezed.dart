// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plan_type_transfer_screen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlanTypeTransferScreen _$PlanTypeTransferScreenFromJson(
    Map<String, dynamic> json) {
  return _PlanTypeTransferScreen.fromJson(json);
}

/// @nodoc
mixin _$PlanTypeTransferScreen {
  int get planId => throw _privateConstructorUsedError;
  int get day => throw _privateConstructorUsedError;
  List<WorkoutDto> get workouts => throw _privateConstructorUsedError;
  List<DietDto> get diets => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlanTypeTransferScreenCopyWith<PlanTypeTransferScreen> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlanTypeTransferScreenCopyWith<$Res> {
  factory $PlanTypeTransferScreenCopyWith(PlanTypeTransferScreen value,
          $Res Function(PlanTypeTransferScreen) then) =
      _$PlanTypeTransferScreenCopyWithImpl<$Res, PlanTypeTransferScreen>;
  @useResult
  $Res call(
      {int planId, int day, List<WorkoutDto> workouts, List<DietDto> diets});
}

/// @nodoc
class _$PlanTypeTransferScreenCopyWithImpl<$Res,
        $Val extends PlanTypeTransferScreen>
    implements $PlanTypeTransferScreenCopyWith<$Res> {
  _$PlanTypeTransferScreenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? planId = null,
    Object? day = null,
    Object? workouts = null,
    Object? diets = null,
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
      workouts: null == workouts
          ? _value.workouts
          : workouts // ignore: cast_nullable_to_non_nullable
              as List<WorkoutDto>,
      diets: null == diets
          ? _value.diets
          : diets // ignore: cast_nullable_to_non_nullable
              as List<DietDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PlanTypeTransferScreenCopyWith<$Res>
    implements $PlanTypeTransferScreenCopyWith<$Res> {
  factory _$$_PlanTypeTransferScreenCopyWith(_$_PlanTypeTransferScreen value,
          $Res Function(_$_PlanTypeTransferScreen) then) =
      __$$_PlanTypeTransferScreenCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int planId, int day, List<WorkoutDto> workouts, List<DietDto> diets});
}

/// @nodoc
class __$$_PlanTypeTransferScreenCopyWithImpl<$Res>
    extends _$PlanTypeTransferScreenCopyWithImpl<$Res,
        _$_PlanTypeTransferScreen>
    implements _$$_PlanTypeTransferScreenCopyWith<$Res> {
  __$$_PlanTypeTransferScreenCopyWithImpl(_$_PlanTypeTransferScreen _value,
      $Res Function(_$_PlanTypeTransferScreen) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? planId = null,
    Object? day = null,
    Object? workouts = null,
    Object? diets = null,
  }) {
    return _then(_$_PlanTypeTransferScreen(
      planId: null == planId
          ? _value.planId
          : planId // ignore: cast_nullable_to_non_nullable
              as int,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int,
      workouts: null == workouts
          ? _value._workouts
          : workouts // ignore: cast_nullable_to_non_nullable
              as List<WorkoutDto>,
      diets: null == diets
          ? _value._diets
          : diets // ignore: cast_nullable_to_non_nullable
              as List<DietDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PlanTypeTransferScreen implements _PlanTypeTransferScreen {
  _$_PlanTypeTransferScreen(
      {required this.planId,
      required this.day,
      required final List<WorkoutDto> workouts,
      required final List<DietDto> diets})
      : _workouts = workouts,
        _diets = diets;

  factory _$_PlanTypeTransferScreen.fromJson(Map<String, dynamic> json) =>
      _$$_PlanTypeTransferScreenFromJson(json);

  @override
  final int planId;
  @override
  final int day;
  final List<WorkoutDto> _workouts;
  @override
  List<WorkoutDto> get workouts {
    if (_workouts is EqualUnmodifiableListView) return _workouts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_workouts);
  }

  final List<DietDto> _diets;
  @override
  List<DietDto> get diets {
    if (_diets is EqualUnmodifiableListView) return _diets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_diets);
  }

  @override
  String toString() {
    return 'PlanTypeTransferScreen(planId: $planId, day: $day, workouts: $workouts, diets: $diets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlanTypeTransferScreen &&
            (identical(other.planId, planId) || other.planId == planId) &&
            (identical(other.day, day) || other.day == day) &&
            const DeepCollectionEquality().equals(other._workouts, _workouts) &&
            const DeepCollectionEquality().equals(other._diets, _diets));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      planId,
      day,
      const DeepCollectionEquality().hash(_workouts),
      const DeepCollectionEquality().hash(_diets));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlanTypeTransferScreenCopyWith<_$_PlanTypeTransferScreen> get copyWith =>
      __$$_PlanTypeTransferScreenCopyWithImpl<_$_PlanTypeTransferScreen>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlanTypeTransferScreenToJson(
      this,
    );
  }
}

abstract class _PlanTypeTransferScreen implements PlanTypeTransferScreen {
  factory _PlanTypeTransferScreen(
      {required final int planId,
      required final int day,
      required final List<WorkoutDto> workouts,
      required final List<DietDto> diets}) = _$_PlanTypeTransferScreen;

  factory _PlanTypeTransferScreen.fromJson(Map<String, dynamic> json) =
      _$_PlanTypeTransferScreen.fromJson;

  @override
  int get planId;
  @override
  int get day;
  @override
  List<WorkoutDto> get workouts;
  @override
  List<DietDto> get diets;
  @override
  @JsonKey(ignore: true)
  _$$_PlanTypeTransferScreenCopyWith<_$_PlanTypeTransferScreen> get copyWith =>
      throw _privateConstructorUsedError;
}
