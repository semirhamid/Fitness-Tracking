// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plan_type_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlanTypeDto _$PlanTypeDtoFromJson(Map<String, dynamic> json) {
  return _PlanTypeDto.fromJson(json);
}

/// @nodoc
mixin _$PlanTypeDto {
  int get plan_typeId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get level => throw _privateConstructorUsedError;
  Map<String, DayPlanTypeDto> get dayPlanType =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlanTypeDtoCopyWith<PlanTypeDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlanTypeDtoCopyWith<$Res> {
  factory $PlanTypeDtoCopyWith(
          PlanTypeDto value, $Res Function(PlanTypeDto) then) =
      _$PlanTypeDtoCopyWithImpl<$Res, PlanTypeDto>;
  @useResult
  $Res call(
      {int plan_typeId,
      String title,
      String imageUrl,
      String description,
      String level,
      Map<String, DayPlanTypeDto> dayPlanType});
}

/// @nodoc
class _$PlanTypeDtoCopyWithImpl<$Res, $Val extends PlanTypeDto>
    implements $PlanTypeDtoCopyWith<$Res> {
  _$PlanTypeDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plan_typeId = null,
    Object? title = null,
    Object? imageUrl = null,
    Object? description = null,
    Object? level = null,
    Object? dayPlanType = null,
  }) {
    return _then(_value.copyWith(
      plan_typeId: null == plan_typeId
          ? _value.plan_typeId
          : plan_typeId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String,
      dayPlanType: null == dayPlanType
          ? _value.dayPlanType
          : dayPlanType // ignore: cast_nullable_to_non_nullable
              as Map<String, DayPlanTypeDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PlanTypeDtoCopyWith<$Res>
    implements $PlanTypeDtoCopyWith<$Res> {
  factory _$$_PlanTypeDtoCopyWith(
          _$_PlanTypeDto value, $Res Function(_$_PlanTypeDto) then) =
      __$$_PlanTypeDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int plan_typeId,
      String title,
      String imageUrl,
      String description,
      String level,
      Map<String, DayPlanTypeDto> dayPlanType});
}

/// @nodoc
class __$$_PlanTypeDtoCopyWithImpl<$Res>
    extends _$PlanTypeDtoCopyWithImpl<$Res, _$_PlanTypeDto>
    implements _$$_PlanTypeDtoCopyWith<$Res> {
  __$$_PlanTypeDtoCopyWithImpl(
      _$_PlanTypeDto _value, $Res Function(_$_PlanTypeDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plan_typeId = null,
    Object? title = null,
    Object? imageUrl = null,
    Object? description = null,
    Object? level = null,
    Object? dayPlanType = null,
  }) {
    return _then(_$_PlanTypeDto(
      plan_typeId: null == plan_typeId
          ? _value.plan_typeId
          : plan_typeId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String,
      dayPlanType: null == dayPlanType
          ? _value._dayPlanType
          : dayPlanType // ignore: cast_nullable_to_non_nullable
              as Map<String, DayPlanTypeDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PlanTypeDto implements _PlanTypeDto {
  _$_PlanTypeDto(
      {required this.plan_typeId,
      required this.title,
      required this.imageUrl,
      required this.description,
      required this.level,
      required final Map<String, DayPlanTypeDto> dayPlanType})
      : _dayPlanType = dayPlanType;

  factory _$_PlanTypeDto.fromJson(Map<String, dynamic> json) =>
      _$$_PlanTypeDtoFromJson(json);

  @override
  final int plan_typeId;
  @override
  final String title;
  @override
  final String imageUrl;
  @override
  final String description;
  @override
  final String level;
  final Map<String, DayPlanTypeDto> _dayPlanType;
  @override
  Map<String, DayPlanTypeDto> get dayPlanType {
    if (_dayPlanType is EqualUnmodifiableMapView) return _dayPlanType;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_dayPlanType);
  }

  @override
  String toString() {
    return 'PlanTypeDto(plan_typeId: $plan_typeId, title: $title, imageUrl: $imageUrl, description: $description, level: $level, dayPlanType: $dayPlanType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlanTypeDto &&
            (identical(other.plan_typeId, plan_typeId) ||
                other.plan_typeId == plan_typeId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.level, level) || other.level == level) &&
            const DeepCollectionEquality()
                .equals(other._dayPlanType, _dayPlanType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, plan_typeId, title, imageUrl,
      description, level, const DeepCollectionEquality().hash(_dayPlanType));

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

abstract class _PlanTypeDto implements PlanTypeDto {
  factory _PlanTypeDto(
      {required final int plan_typeId,
      required final String title,
      required final String imageUrl,
      required final String description,
      required final String level,
      required final Map<String, DayPlanTypeDto> dayPlanType}) = _$_PlanTypeDto;

  factory _PlanTypeDto.fromJson(Map<String, dynamic> json) =
      _$_PlanTypeDto.fromJson;

  @override
  int get plan_typeId;
  @override
  String get title;
  @override
  String get imageUrl;
  @override
  String get description;
  @override
  String get level;
  @override
  Map<String, DayPlanTypeDto> get dayPlanType;
  @override
  @JsonKey(ignore: true)
  _$$_PlanTypeDtoCopyWith<_$_PlanTypeDto> get copyWith =>
      throw _privateConstructorUsedError;
}
