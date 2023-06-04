// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'workout.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Workout {
  UniqueId get id => throw _privateConstructorUsedError;
  Title get name => throw _privateConstructorUsedError;
  Description get description => throw _privateConstructorUsedError;
  int get duration => throw _privateConstructorUsedError;
  int get step => throw _privateConstructorUsedError;
  String get focus => throw _privateConstructorUsedError;
  Image get image1Url => throw _privateConstructorUsedError;
  Image get image2Url => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WorkoutCopyWith<Workout> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkoutCopyWith<$Res> {
  factory $WorkoutCopyWith(Workout value, $Res Function(Workout) then) =
      _$WorkoutCopyWithImpl<$Res, Workout>;
  @useResult
  $Res call(
      {UniqueId id,
      Title name,
      Description description,
      int duration,
      int step,
      String focus,
      Image image1Url,
      Image image2Url});
}

/// @nodoc
class _$WorkoutCopyWithImpl<$Res, $Val extends Workout>
    implements $WorkoutCopyWith<$Res> {
  _$WorkoutCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? duration = null,
    Object? step = null,
    Object? focus = null,
    Object? image1Url = null,
    Object? image2Url = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Title,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as Description,
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
      image1Url: null == image1Url
          ? _value.image1Url
          : image1Url // ignore: cast_nullable_to_non_nullable
              as Image,
      image2Url: null == image2Url
          ? _value.image2Url
          : image2Url // ignore: cast_nullable_to_non_nullable
              as Image,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WorkoutCopyWith<$Res> implements $WorkoutCopyWith<$Res> {
  factory _$$_WorkoutCopyWith(
          _$_Workout value, $Res Function(_$_Workout) then) =
      __$$_WorkoutCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UniqueId id,
      Title name,
      Description description,
      int duration,
      int step,
      String focus,
      Image image1Url,
      Image image2Url});
}

/// @nodoc
class __$$_WorkoutCopyWithImpl<$Res>
    extends _$WorkoutCopyWithImpl<$Res, _$_Workout>
    implements _$$_WorkoutCopyWith<$Res> {
  __$$_WorkoutCopyWithImpl(_$_Workout _value, $Res Function(_$_Workout) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? duration = null,
    Object? step = null,
    Object? focus = null,
    Object? image1Url = null,
    Object? image2Url = null,
  }) {
    return _then(_$_Workout(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Title,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as Description,
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
      image1Url: null == image1Url
          ? _value.image1Url
          : image1Url // ignore: cast_nullable_to_non_nullable
              as Image,
      image2Url: null == image2Url
          ? _value.image2Url
          : image2Url // ignore: cast_nullable_to_non_nullable
              as Image,
    ));
  }
}

/// @nodoc

class _$_Workout implements _Workout {
  const _$_Workout(
      {required this.id,
      required this.name,
      required this.description,
      required this.duration,
      required this.step,
      required this.focus,
      required this.image1Url,
      required this.image2Url});

  @override
  final UniqueId id;
  @override
  final Title name;
  @override
  final Description description;
  @override
  final int duration;
  @override
  final int step;
  @override
  final String focus;
  @override
  final Image image1Url;
  @override
  final Image image2Url;

  @override
  String toString() {
    return 'Workout(id: $id, name: $name, description: $description, duration: $duration, step: $step, focus: $focus, image1Url: $image1Url, image2Url: $image2Url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Workout &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
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
  int get hashCode => Object.hash(runtimeType, id, name, description, duration,
      step, focus, image1Url, image2Url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WorkoutCopyWith<_$_Workout> get copyWith =>
      __$$_WorkoutCopyWithImpl<_$_Workout>(this, _$identity);
}

abstract class _Workout implements Workout {
  const factory _Workout(
      {required final UniqueId id,
      required final Title name,
      required final Description description,
      required final int duration,
      required final int step,
      required final String focus,
      required final Image image1Url,
      required final Image image2Url}) = _$_Workout;

  @override
  UniqueId get id;
  @override
  Title get name;
  @override
  Description get description;
  @override
  int get duration;
  @override
  int get step;
  @override
  String get focus;
  @override
  Image get image1Url;
  @override
  Image get image2Url;
  @override
  @JsonKey(ignore: true)
  _$$_WorkoutCopyWith<_$_Workout> get copyWith =>
      throw _privateConstructorUsedError;
}
