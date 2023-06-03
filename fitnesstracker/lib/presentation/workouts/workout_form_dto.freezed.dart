// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'workout_form_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WorkoutFormDto {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get duration => throw _privateConstructorUsedError;
  int get step => throw _privateConstructorUsedError;
  String get focus => throw _privateConstructorUsedError;
  File? get image1Url => throw _privateConstructorUsedError;
  File? get image2Url => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WorkoutFormDtoCopyWith<WorkoutFormDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkoutFormDtoCopyWith<$Res> {
  factory $WorkoutFormDtoCopyWith(
          WorkoutFormDto value, $Res Function(WorkoutFormDto) then) =
      _$WorkoutFormDtoCopyWithImpl<$Res, WorkoutFormDto>;
  @useResult
  $Res call(
      {int id,
      String title,
      String description,
      int duration,
      int step,
      String focus,
      File? image1Url,
      File? image2Url});
}

/// @nodoc
class _$WorkoutFormDtoCopyWithImpl<$Res, $Val extends WorkoutFormDto>
    implements $WorkoutFormDtoCopyWith<$Res> {
  _$WorkoutFormDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? duration = null,
    Object? step = null,
    Object? focus = null,
    Object? image1Url = freezed,
    Object? image2Url = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      step: null == step
          ? _value.step
          : step // ignore: cast_nullable_to_non_nullable
              as int,
      focus: null == focus
          ? _value.focus
          : focus // ignore: cast_nullable_to_non_nullable
              as String,
      image1Url: freezed == image1Url
          ? _value.image1Url
          : image1Url // ignore: cast_nullable_to_non_nullable
              as File?,
      image2Url: freezed == image2Url
          ? _value.image2Url
          : image2Url // ignore: cast_nullable_to_non_nullable
              as File?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WorkoutDtoCopyWith<$Res>
    implements $WorkoutFormDtoCopyWith<$Res> {
  factory _$$_WorkoutDtoCopyWith(
          _$_WorkoutDto value, $Res Function(_$_WorkoutDto) then) =
      __$$_WorkoutDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String description,
      int duration,
      int step,
      String focus,
      File? image1Url,
      File? image2Url});
}

/// @nodoc
class __$$_WorkoutDtoCopyWithImpl<$Res>
    extends _$WorkoutFormDtoCopyWithImpl<$Res, _$_WorkoutDto>
    implements _$$_WorkoutDtoCopyWith<$Res> {
  __$$_WorkoutDtoCopyWithImpl(
      _$_WorkoutDto _value, $Res Function(_$_WorkoutDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? duration = null,
    Object? step = null,
    Object? focus = null,
    Object? image1Url = freezed,
    Object? image2Url = freezed,
  }) {
    return _then(_$_WorkoutDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      step: null == step
          ? _value.step
          : step // ignore: cast_nullable_to_non_nullable
              as int,
      focus: null == focus
          ? _value.focus
          : focus // ignore: cast_nullable_to_non_nullable
              as String,
      image1Url: freezed == image1Url
          ? _value.image1Url
          : image1Url // ignore: cast_nullable_to_non_nullable
              as File?,
      image2Url: freezed == image2Url
          ? _value.image2Url
          : image2Url // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

/// @nodoc

class _$_WorkoutDto implements _WorkoutDto {
  const _$_WorkoutDto(
      {this.id = 0,
      required this.title,
      required this.description,
      required this.duration,
      required this.step,
      required this.focus,
      required this.image1Url,
      required this.image2Url});

  @override
  @JsonKey()
  final int id;
  @override
  final String title;
  @override
  final String description;
  @override
  final int duration;
  @override
  final int step;
  @override
  final String focus;
  @override
  final File? image1Url;
  @override
  final File? image2Url;

  @override
  String toString() {
    return 'WorkoutFormDto(id: $id, title: $title, description: $description, duration: $duration, step: $step, focus: $focus, image1Url: $image1Url, image2Url: $image2Url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WorkoutDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.step, step) || other.step == step) &&
            (identical(other.focus, focus) || other.focus == focus) &&
            (identical(other.image1Url, image1Url) ||
                other.image1Url == image1Url) &&
            (identical(other.image2Url, image2Url) ||
                other.image2Url == image2Url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title, description, duration,
      step, focus, image1Url, image2Url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WorkoutDtoCopyWith<_$_WorkoutDto> get copyWith =>
      __$$_WorkoutDtoCopyWithImpl<_$_WorkoutDto>(this, _$identity);
}

abstract class _WorkoutDto implements WorkoutFormDto {
  const factory _WorkoutDto(
      {final int id,
      required final String title,
      required final String description,
      required final int duration,
      required final int step,
      required final String focus,
      required final File? image1Url,
      required final File? image2Url}) = _$_WorkoutDto;

  @override
  int get id;
  @override
  String get title;
  @override
  String get description;
  @override
  int get duration;
  @override
  int get step;
  @override
  String get focus;
  @override
  File? get image1Url;
  @override
  File? get image2Url;
  @override
  @JsonKey(ignore: true)
  _$$_WorkoutDtoCopyWith<_$_WorkoutDto> get copyWith =>
      throw _privateConstructorUsedError;
}
