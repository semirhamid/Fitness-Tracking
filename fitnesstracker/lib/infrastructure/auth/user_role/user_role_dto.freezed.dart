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
  String get emailAddress => throw _privateConstructorUsedError;
  List<String> get role => throw _privateConstructorUsedError;

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
  $Res call({String emailAddress, List<String> role});
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
    Object? emailAddress = null,
    Object? role = null,
  }) {
    return _then(_value.copyWith(
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
  $Res call({String emailAddress, List<String> role});
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
    Object? emailAddress = null,
    Object? role = null,
  }) {
    return _then(_$_UserRoleDto(
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value._role
          : role // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserRoleDto implements _UserRoleDto {
  const _$_UserRoleDto(
      {required this.emailAddress, required final List<String> role})
      : _role = role;

  factory _$_UserRoleDto.fromJson(Map<String, dynamic> json) =>
      _$$_UserRoleDtoFromJson(json);

  @override
  final String emailAddress;
  final List<String> _role;
  @override
  List<String> get role {
    if (_role is EqualUnmodifiableListView) return _role;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_role);
  }

  @override
  String toString() {
    return 'UserRoleDto(emailAddress: $emailAddress, role: $role)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserRoleDto &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress) &&
            const DeepCollectionEquality().equals(other._role, _role));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, emailAddress, const DeepCollectionEquality().hash(_role));

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
      {required final String emailAddress,
      required final List<String> role}) = _$_UserRoleDto;

  factory _UserRoleDto.fromJson(Map<String, dynamic> json) =
      _$_UserRoleDto.fromJson;

  @override
  String get emailAddress;
  @override
  List<String> get role;
  @override
  @JsonKey(ignore: true)
  _$$_UserRoleDtoCopyWith<_$_UserRoleDto> get copyWith =>
      throw _privateConstructorUsedError;
}
