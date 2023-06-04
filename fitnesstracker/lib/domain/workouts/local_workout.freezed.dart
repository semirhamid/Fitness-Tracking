// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'local_workout.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WorkoutLocal _$WorkoutLocalFromJson(Map<String, dynamic> json) {
  return _WorkoutLocal.fromJson(json);
}

/// @nodoc
mixin _$WorkoutLocal {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get duration => throw _privateConstructorUsedError;
  int get step => throw _privateConstructorUsedError;
  String get focus => throw _privateConstructorUsedError;
  String get image1Url => throw _privateConstructorUsedError;
  String get image2Url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkoutLocalCopyWith<WorkoutLocal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkoutLocalCopyWith<$Res> {
  factory $WorkoutLocalCopyWith(
          WorkoutLocal value, $Res Function(WorkoutLocal) then) =
      _$WorkoutLocalCopyWithImpl<$Res, WorkoutLocal>;
  @useResult
  $Res call(
      {int id,
      String name,
      String description,
      int duration,
      int step,
      String focus,
      String image1Url,
      String image2Url});
}

/// @nodoc
class _$WorkoutLocalCopyWithImpl<$Res, $Val extends WorkoutLocal>
    implements $WorkoutLocalCopyWith<$Res> {
  _$WorkoutLocalCopyWithImpl(this._value, this._then);

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
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
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
      image1Url: null == image1Url
          ? _value.image1Url
          : image1Url // ignore: cast_nullable_to_non_nullable
              as String,
      image2Url: null == image2Url
          ? _value.image2Url
          : image2Url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WorkoutLocalCopyWith<$Res>
    implements $WorkoutLocalCopyWith<$Res> {
  factory _$$_WorkoutLocalCopyWith(
          _$_WorkoutLocal value, $Res Function(_$_WorkoutLocal) then) =
      __$$_WorkoutLocalCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String description,
      int duration,
      int step,
      String focus,
      String image1Url,
      String image2Url});
}

/// @nodoc
class __$$_WorkoutLocalCopyWithImpl<$Res>
    extends _$WorkoutLocalCopyWithImpl<$Res, _$_WorkoutLocal>
    implements _$$_WorkoutLocalCopyWith<$Res> {
  __$$_WorkoutLocalCopyWithImpl(
      _$_WorkoutLocal _value, $Res Function(_$_WorkoutLocal) _then)
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
    return _then(_$_WorkoutLocal(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
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
      image1Url: null == image1Url
          ? _value.image1Url
          : image1Url // ignore: cast_nullable_to_non_nullable
              as String,
      image2Url: null == image2Url
          ? _value.image2Url
          : image2Url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WorkoutLocal implements _WorkoutLocal {
  const _$_WorkoutLocal(
      {required this.id,
      required this.name,
      required this.description,
      required this.duration,
      required this.step,
      required this.focus,
      required this.image1Url,
      required this.image2Url});

  factory _$_WorkoutLocal.fromJson(Map<String, dynamic> json) =>
      _$$_WorkoutLocalFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String description;
  @override
  final int duration;
  @override
  final int step;
  @override
  final String focus;
  @override
  final String image1Url;
  @override
  final String image2Url;

  @override
  String toString() {
    return 'WorkoutLocal(id: $id, name: $name, description: $description, duration: $duration, step: $step, focus: $focus, image1Url: $image1Url, image2Url: $image2Url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WorkoutLocal &&
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

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description, duration,
      step, focus, image1Url, image2Url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WorkoutLocalCopyWith<_$_WorkoutLocal> get copyWith =>
      __$$_WorkoutLocalCopyWithImpl<_$_WorkoutLocal>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WorkoutLocalToJson(
      this,
    );
  }
}

abstract class _WorkoutLocal implements WorkoutLocal {
  const factory _WorkoutLocal(
      {required final int id,
      required final String name,
      required final String description,
      required final int duration,
      required final int step,
      required final String focus,
      required final String image1Url,
      required final String image2Url}) = _$_WorkoutLocal;

  factory _WorkoutLocal.fromJson(Map<String, dynamic> json) =
      _$_WorkoutLocal.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get description;
  @override
  int get duration;
  @override
  int get step;
  @override
  String get focus;
  @override
  String get image1Url;
  @override
  String get image2Url;
  @override
  @JsonKey(ignore: true)
  _$$_WorkoutLocalCopyWith<_$_WorkoutLocal> get copyWith =>
      throw _privateConstructorUsedError;
}
