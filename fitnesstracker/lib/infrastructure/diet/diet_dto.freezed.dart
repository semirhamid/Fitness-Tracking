// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'diet_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DietDto _$DietDtoFromJson(Map<String, dynamic> json) {
  return _DietDto.fromJson(json);
}

/// @nodoc
mixin _$DietDto {
  int get id => throw _privateConstructorUsedError;
  String get mealType => throw _privateConstructorUsedError;
  String get mealName => throw _privateConstructorUsedError;
  String get mealDescription => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DietDtoCopyWith<DietDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DietDtoCopyWith<$Res> {
  factory $DietDtoCopyWith(DietDto value, $Res Function(DietDto) then) =
      _$DietDtoCopyWithImpl<$Res, DietDto>;
  @useResult
  $Res call(
      {int id,
      String mealType,
      String mealName,
      String mealDescription,
      String imageUrl});
}

/// @nodoc
class _$DietDtoCopyWithImpl<$Res, $Val extends DietDto>
    implements $DietDtoCopyWith<$Res> {
  _$DietDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? mealType = null,
    Object? mealName = null,
    Object? mealDescription = null,
    Object? imageUrl = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      mealType: null == mealType
          ? _value.mealType
          : mealType // ignore: cast_nullable_to_non_nullable
              as String,
      mealName: null == mealName
          ? _value.mealName
          : mealName // ignore: cast_nullable_to_non_nullable
              as String,
      mealDescription: null == mealDescription
          ? _value.mealDescription
          : mealDescription // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DietDtoCopyWith<$Res> implements $DietDtoCopyWith<$Res> {
  factory _$$_DietDtoCopyWith(
          _$_DietDto value, $Res Function(_$_DietDto) then) =
      __$$_DietDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String mealType,
      String mealName,
      String mealDescription,
      String imageUrl});
}

/// @nodoc
class __$$_DietDtoCopyWithImpl<$Res>
    extends _$DietDtoCopyWithImpl<$Res, _$_DietDto>
    implements _$$_DietDtoCopyWith<$Res> {
  __$$_DietDtoCopyWithImpl(_$_DietDto _value, $Res Function(_$_DietDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? mealType = null,
    Object? mealName = null,
    Object? mealDescription = null,
    Object? imageUrl = null,
  }) {
    return _then(_$_DietDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      mealType: null == mealType
          ? _value.mealType
          : mealType // ignore: cast_nullable_to_non_nullable
              as String,
      mealName: null == mealName
          ? _value.mealName
          : mealName // ignore: cast_nullable_to_non_nullable
              as String,
      mealDescription: null == mealDescription
          ? _value.mealDescription
          : mealDescription // ignore: cast_nullable_to_non_nullable
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
class _$_DietDto implements _DietDto {
  const _$_DietDto(
      {required this.id,
      required this.mealType,
      required this.mealName,
      required this.mealDescription,
      required this.imageUrl});

  factory _$_DietDto.fromJson(Map<String, dynamic> json) =>
      _$$_DietDtoFromJson(json);

  @override
  final int id;
  @override
  final String mealType;
  @override
  final String mealName;
  @override
  final String mealDescription;
  @override
  final String imageUrl;

  @override
  String toString() {
    return 'DietDto(id: $id, mealType: $mealType, mealName: $mealName, mealDescription: $mealDescription, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DietDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.mealType, mealType) ||
                other.mealType == mealType) &&
            (identical(other.mealName, mealName) ||
                other.mealName == mealName) &&
            (identical(other.mealDescription, mealDescription) ||
                other.mealDescription == mealDescription) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, mealType, mealName, mealDescription, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DietDtoCopyWith<_$_DietDto> get copyWith =>
      __$$_DietDtoCopyWithImpl<_$_DietDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DietDtoToJson(
      this,
    );
  }
}

abstract class _DietDto implements DietDto {
  const factory _DietDto(
      {required final int id,
      required final String mealType,
      required final String mealName,
      required final String mealDescription,
      required final String imageUrl}) = _$_DietDto;

  factory _DietDto.fromJson(Map<String, dynamic> json) = _$_DietDto.fromJson;

  @override
  int get id;
  @override
  String get mealType;
  @override
  String get mealName;
  @override
  String get mealDescription;
  @override
  String get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$_DietDtoCopyWith<_$_DietDto> get copyWith =>
      throw _privateConstructorUsedError;
}
