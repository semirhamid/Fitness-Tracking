// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plan_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlanDto _$PlanDtoFromJson(Map<String, dynamic> json) {
  return _PlanDto.fromJson(json);
}

/// @nodoc
mixin _$PlanDto {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get level => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlanDtoCopyWith<PlanDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlanDtoCopyWith<$Res> {
  factory $PlanDtoCopyWith(PlanDto value, $Res Function(PlanDto) then) =
      _$PlanDtoCopyWithImpl<$Res, PlanDto>;
  @useResult
  $Res call(
      {int id,
      String title,
      String description,
      String level,
      String imageUrl});
}

/// @nodoc
class _$PlanDtoCopyWithImpl<$Res, $Val extends PlanDto>
    implements $PlanDtoCopyWith<$Res> {
  _$PlanDtoCopyWithImpl(this._value, this._then);

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
    Object? level = null,
    Object? imageUrl = null,
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
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PlanDtoCopyWith<$Res> implements $PlanDtoCopyWith<$Res> {
  factory _$$_PlanDtoCopyWith(
          _$_PlanDto value, $Res Function(_$_PlanDto) then) =
      __$$_PlanDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String description,
      String level,
      String imageUrl});
}

/// @nodoc
class __$$_PlanDtoCopyWithImpl<$Res>
    extends _$PlanDtoCopyWithImpl<$Res, _$_PlanDto>
    implements _$$_PlanDtoCopyWith<$Res> {
  __$$_PlanDtoCopyWithImpl(_$_PlanDto _value, $Res Function(_$_PlanDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? level = null,
    Object? imageUrl = null,
  }) {
    return _then(_$_PlanDto(
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
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PlanDto implements _PlanDto {
  const _$_PlanDto(
      {required this.id,
      required this.title,
      required this.description,
      required this.level,
      required this.imageUrl});

  factory _$_PlanDto.fromJson(Map<String, dynamic> json) =>
      _$$_PlanDtoFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String description;
  @override
  final String level;
  @override
  final String imageUrl;

  @override
  String toString() {
    return 'PlanDto(id: $id, title: $title, description: $description, level: $level, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlanDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, description, level, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlanDtoCopyWith<_$_PlanDto> get copyWith =>
      __$$_PlanDtoCopyWithImpl<_$_PlanDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlanDtoToJson(
      this,
    );
  }
}

abstract class _PlanDto implements PlanDto {
  const factory _PlanDto(
      {required final int id,
      required final String title,
      required final String description,
      required final String level,
      required final String imageUrl}) = _$_PlanDto;

  factory _PlanDto.fromJson(Map<String, dynamic> json) = _$_PlanDto.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get description;
  @override
  String get level;
  @override
  String get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$_PlanDtoCopyWith<_$_PlanDto> get copyWith =>
      throw _privateConstructorUsedError;
}
