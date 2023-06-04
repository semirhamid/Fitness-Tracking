// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'diet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Diet {
  int get id => throw _privateConstructorUsedError;
  String get mealType => throw _privateConstructorUsedError;
  String get mealName => throw _privateConstructorUsedError;
  String get mealDescription => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DietCopyWith<Diet> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DietCopyWith<$Res> {
  factory $DietCopyWith(Diet value, $Res Function(Diet) then) =
      _$DietCopyWithImpl<$Res, Diet>;
  @useResult
  $Res call(
      {int id,
      String mealType,
      String mealName,
      String mealDescription,
      String imageUrl});
}

/// @nodoc
class _$DietCopyWithImpl<$Res, $Val extends Diet>
    implements $DietCopyWith<$Res> {
  _$DietCopyWithImpl(this._value, this._then);

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
abstract class _$$_DietCopyWith<$Res> implements $DietCopyWith<$Res> {
  factory _$$_DietCopyWith(_$_Diet value, $Res Function(_$_Diet) then) =
      __$$_DietCopyWithImpl<$Res>;
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
class __$$_DietCopyWithImpl<$Res> extends _$DietCopyWithImpl<$Res, _$_Diet>
    implements _$$_DietCopyWith<$Res> {
  __$$_DietCopyWithImpl(_$_Diet _value, $Res Function(_$_Diet) _then)
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
    return _then(_$_Diet(
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

class _$_Diet implements _Diet {
  const _$_Diet(
      {required this.id,
      required this.mealType,
      required this.mealName,
      required this.mealDescription,
      required this.imageUrl});

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
    return 'Diet(id: $id, mealType: $mealType, mealName: $mealName, mealDescription: $mealDescription, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Diet &&
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

  @override
  int get hashCode => Object.hash(
      runtimeType, id, mealType, mealName, mealDescription, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DietCopyWith<_$_Diet> get copyWith =>
      __$$_DietCopyWithImpl<_$_Diet>(this, _$identity);
}

abstract class _Diet implements Diet {
  const factory _Diet(
      {required final int id,
      required final String mealType,
      required final String mealName,
      required final String mealDescription,
      required final String imageUrl}) = _$_Diet;

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
  _$$_DietCopyWith<_$_Diet> get copyWith => throw _privateConstructorUsedError;
}
