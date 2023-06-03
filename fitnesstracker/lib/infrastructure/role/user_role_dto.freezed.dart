// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_role_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserRoleDto _$UserRoleDtoFromJson(Map<String, dynamic> json) {
  return _UserRoleDto.fromJson(json);
}

/// @nodoc
mixin _$UserRoleDto {
  String get roleName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserRoleDtoCopyWith<UserRoleDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRoleDtoCopyWith<$Res> {
  factory $UserRoleDtoCopyWith(
          UserRoleDto value, $Res Function(UserRoleDto) then) =
      _$UserRoleDtoCopyWithImpl<$Res, UserRoleDto>;
  @useResult
  $Res call({String roleName, String email});
}

/// @nodoc
class _$UserRoleDtoCopyWithImpl<$Res, $Val extends UserRoleDto>
    implements $UserRoleDtoCopyWith<$Res> {
  _$UserRoleDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roleName = null,
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      roleName: null == roleName
          ? _value.roleName
          : roleName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserRoleDtoCopyWith<$Res>
    implements $UserRoleDtoCopyWith<$Res> {
  factory _$$_UserRoleDtoCopyWith(
          _$_UserRoleDto value, $Res Function(_$_UserRoleDto) then) =
      __$$_UserRoleDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String roleName, String email});
}

/// @nodoc
class __$$_UserRoleDtoCopyWithImpl<$Res>
    extends _$UserRoleDtoCopyWithImpl<$Res, _$_UserRoleDto>
    implements _$$_UserRoleDtoCopyWith<$Res> {
  __$$_UserRoleDtoCopyWithImpl(
      _$_UserRoleDto _value, $Res Function(_$_UserRoleDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roleName = null,
    Object? email = null,
  }) {
    return _then(_$_UserRoleDto(
      roleName: null == roleName
          ? _value.roleName
          : roleName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserRoleDto implements _UserRoleDto {
  const _$_UserRoleDto({required this.roleName, required this.email});

  factory _$_UserRoleDto.fromJson(Map<String, dynamic> json) =>
      _$$_UserRoleDtoFromJson(json);

  @override
  final String roleName;
  @override
  final String email;

  @override
  String toString() {
    return 'UserRoleDto(roleName: $roleName, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserRoleDto &&
            (identical(other.roleName, roleName) ||
                other.roleName == roleName) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, roleName, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserRoleDtoCopyWith<_$_UserRoleDto> get copyWith =>
      __$$_UserRoleDtoCopyWithImpl<_$_UserRoleDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserRoleDtoToJson(
      this,
    );
  }
}

abstract class _UserRoleDto implements UserRoleDto {
  const factory _UserRoleDto(
      {required final String roleName,
      required final String email}) = _$_UserRoleDto;

  factory _UserRoleDto.fromJson(Map<String, dynamic> json) =
      _$_UserRoleDto.fromJson;

  @override
  String get roleName;
  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$_UserRoleDtoCopyWith<_$_UserRoleDto> get copyWith =>
      throw _privateConstructorUsedError;
}
