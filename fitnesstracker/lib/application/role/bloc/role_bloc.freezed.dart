// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'role_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RoleEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String roleName) createRole,
    required TResult Function(String roleName) deleteRole,
    required TResult Function(String roleName) getRoleUsers,
    required TResult Function() getRoles,
    required TResult Function(UserRole userRole) addUserToRole,
    required TResult Function(UserRole userRole) removeUserToRole,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String roleName)? createRole,
    TResult? Function(String roleName)? deleteRole,
    TResult? Function(String roleName)? getRoleUsers,
    TResult? Function()? getRoles,
    TResult? Function(UserRole userRole)? addUserToRole,
    TResult? Function(UserRole userRole)? removeUserToRole,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String roleName)? createRole,
    TResult Function(String roleName)? deleteRole,
    TResult Function(String roleName)? getRoleUsers,
    TResult Function()? getRoles,
    TResult Function(UserRole userRole)? addUserToRole,
    TResult Function(UserRole userRole)? removeUserToRole,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CreateRole value) createRole,
    required TResult Function(DeleteRole value) deleteRole,
    required TResult Function(GetRoleUsers value) getRoleUsers,
    required TResult Function(GetRoles value) getRoles,
    required TResult Function(AddUserToRole value) addUserToRole,
    required TResult Function(RemoveUserToRole value) removeUserToRole,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CreateRole value)? createRole,
    TResult? Function(DeleteRole value)? deleteRole,
    TResult? Function(GetRoleUsers value)? getRoleUsers,
    TResult? Function(GetRoles value)? getRoles,
    TResult? Function(AddUserToRole value)? addUserToRole,
    TResult? Function(RemoveUserToRole value)? removeUserToRole,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CreateRole value)? createRole,
    TResult Function(DeleteRole value)? deleteRole,
    TResult Function(GetRoleUsers value)? getRoleUsers,
    TResult Function(GetRoles value)? getRoles,
    TResult Function(AddUserToRole value)? addUserToRole,
    TResult Function(RemoveUserToRole value)? removeUserToRole,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoleEventCopyWith<$Res> {
  factory $RoleEventCopyWith(RoleEvent value, $Res Function(RoleEvent) then) =
      _$RoleEventCopyWithImpl<$Res, RoleEvent>;
}

/// @nodoc
class _$RoleEventCopyWithImpl<$Res, $Val extends RoleEvent>
    implements $RoleEventCopyWith<$Res> {
  _$RoleEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$RoleEventCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'RoleEvent.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String roleName) createRole,
    required TResult Function(String roleName) deleteRole,
    required TResult Function(String roleName) getRoleUsers,
    required TResult Function() getRoles,
    required TResult Function(UserRole userRole) addUserToRole,
    required TResult Function(UserRole userRole) removeUserToRole,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String roleName)? createRole,
    TResult? Function(String roleName)? deleteRole,
    TResult? Function(String roleName)? getRoleUsers,
    TResult? Function()? getRoles,
    TResult? Function(UserRole userRole)? addUserToRole,
    TResult? Function(UserRole userRole)? removeUserToRole,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String roleName)? createRole,
    TResult Function(String roleName)? deleteRole,
    TResult Function(String roleName)? getRoleUsers,
    TResult Function()? getRoles,
    TResult Function(UserRole userRole)? addUserToRole,
    TResult Function(UserRole userRole)? removeUserToRole,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CreateRole value) createRole,
    required TResult Function(DeleteRole value) deleteRole,
    required TResult Function(GetRoleUsers value) getRoleUsers,
    required TResult Function(GetRoles value) getRoles,
    required TResult Function(AddUserToRole value) addUserToRole,
    required TResult Function(RemoveUserToRole value) removeUserToRole,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CreateRole value)? createRole,
    TResult? Function(DeleteRole value)? deleteRole,
    TResult? Function(GetRoleUsers value)? getRoleUsers,
    TResult? Function(GetRoles value)? getRoles,
    TResult? Function(AddUserToRole value)? addUserToRole,
    TResult? Function(RemoveUserToRole value)? removeUserToRole,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CreateRole value)? createRole,
    TResult Function(DeleteRole value)? deleteRole,
    TResult Function(GetRoleUsers value)? getRoleUsers,
    TResult Function(GetRoles value)? getRoles,
    TResult Function(AddUserToRole value)? addUserToRole,
    TResult Function(RemoveUserToRole value)? removeUserToRole,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements RoleEvent {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$CreateRoleCopyWith<$Res> {
  factory _$$CreateRoleCopyWith(
          _$CreateRole value, $Res Function(_$CreateRole) then) =
      __$$CreateRoleCopyWithImpl<$Res>;
  @useResult
  $Res call({String roleName});
}

/// @nodoc
class __$$CreateRoleCopyWithImpl<$Res>
    extends _$RoleEventCopyWithImpl<$Res, _$CreateRole>
    implements _$$CreateRoleCopyWith<$Res> {
  __$$CreateRoleCopyWithImpl(
      _$CreateRole _value, $Res Function(_$CreateRole) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roleName = null,
  }) {
    return _then(_$CreateRole(
      null == roleName
          ? _value.roleName
          : roleName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreateRole implements CreateRole {
  const _$CreateRole(this.roleName);

  @override
  final String roleName;

  @override
  String toString() {
    return 'RoleEvent.createRole(roleName: $roleName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateRole &&
            (identical(other.roleName, roleName) ||
                other.roleName == roleName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, roleName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateRoleCopyWith<_$CreateRole> get copyWith =>
      __$$CreateRoleCopyWithImpl<_$CreateRole>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String roleName) createRole,
    required TResult Function(String roleName) deleteRole,
    required TResult Function(String roleName) getRoleUsers,
    required TResult Function() getRoles,
    required TResult Function(UserRole userRole) addUserToRole,
    required TResult Function(UserRole userRole) removeUserToRole,
  }) {
    return createRole(roleName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String roleName)? createRole,
    TResult? Function(String roleName)? deleteRole,
    TResult? Function(String roleName)? getRoleUsers,
    TResult? Function()? getRoles,
    TResult? Function(UserRole userRole)? addUserToRole,
    TResult? Function(UserRole userRole)? removeUserToRole,
  }) {
    return createRole?.call(roleName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String roleName)? createRole,
    TResult Function(String roleName)? deleteRole,
    TResult Function(String roleName)? getRoleUsers,
    TResult Function()? getRoles,
    TResult Function(UserRole userRole)? addUserToRole,
    TResult Function(UserRole userRole)? removeUserToRole,
    required TResult orElse(),
  }) {
    if (createRole != null) {
      return createRole(roleName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CreateRole value) createRole,
    required TResult Function(DeleteRole value) deleteRole,
    required TResult Function(GetRoleUsers value) getRoleUsers,
    required TResult Function(GetRoles value) getRoles,
    required TResult Function(AddUserToRole value) addUserToRole,
    required TResult Function(RemoveUserToRole value) removeUserToRole,
  }) {
    return createRole(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CreateRole value)? createRole,
    TResult? Function(DeleteRole value)? deleteRole,
    TResult? Function(GetRoleUsers value)? getRoleUsers,
    TResult? Function(GetRoles value)? getRoles,
    TResult? Function(AddUserToRole value)? addUserToRole,
    TResult? Function(RemoveUserToRole value)? removeUserToRole,
  }) {
    return createRole?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CreateRole value)? createRole,
    TResult Function(DeleteRole value)? deleteRole,
    TResult Function(GetRoleUsers value)? getRoleUsers,
    TResult Function(GetRoles value)? getRoles,
    TResult Function(AddUserToRole value)? addUserToRole,
    TResult Function(RemoveUserToRole value)? removeUserToRole,
    required TResult orElse(),
  }) {
    if (createRole != null) {
      return createRole(this);
    }
    return orElse();
  }
}

abstract class CreateRole implements RoleEvent {
  const factory CreateRole(final String roleName) = _$CreateRole;

  String get roleName;
  @JsonKey(ignore: true)
  _$$CreateRoleCopyWith<_$CreateRole> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteRoleCopyWith<$Res> {
  factory _$$DeleteRoleCopyWith(
          _$DeleteRole value, $Res Function(_$DeleteRole) then) =
      __$$DeleteRoleCopyWithImpl<$Res>;
  @useResult
  $Res call({String roleName});
}

/// @nodoc
class __$$DeleteRoleCopyWithImpl<$Res>
    extends _$RoleEventCopyWithImpl<$Res, _$DeleteRole>
    implements _$$DeleteRoleCopyWith<$Res> {
  __$$DeleteRoleCopyWithImpl(
      _$DeleteRole _value, $Res Function(_$DeleteRole) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roleName = null,
  }) {
    return _then(_$DeleteRole(
      null == roleName
          ? _value.roleName
          : roleName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteRole implements DeleteRole {
  const _$DeleteRole(this.roleName);

  @override
  final String roleName;

  @override
  String toString() {
    return 'RoleEvent.deleteRole(roleName: $roleName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteRole &&
            (identical(other.roleName, roleName) ||
                other.roleName == roleName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, roleName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteRoleCopyWith<_$DeleteRole> get copyWith =>
      __$$DeleteRoleCopyWithImpl<_$DeleteRole>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String roleName) createRole,
    required TResult Function(String roleName) deleteRole,
    required TResult Function(String roleName) getRoleUsers,
    required TResult Function() getRoles,
    required TResult Function(UserRole userRole) addUserToRole,
    required TResult Function(UserRole userRole) removeUserToRole,
  }) {
    return deleteRole(roleName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String roleName)? createRole,
    TResult? Function(String roleName)? deleteRole,
    TResult? Function(String roleName)? getRoleUsers,
    TResult? Function()? getRoles,
    TResult? Function(UserRole userRole)? addUserToRole,
    TResult? Function(UserRole userRole)? removeUserToRole,
  }) {
    return deleteRole?.call(roleName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String roleName)? createRole,
    TResult Function(String roleName)? deleteRole,
    TResult Function(String roleName)? getRoleUsers,
    TResult Function()? getRoles,
    TResult Function(UserRole userRole)? addUserToRole,
    TResult Function(UserRole userRole)? removeUserToRole,
    required TResult orElse(),
  }) {
    if (deleteRole != null) {
      return deleteRole(roleName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CreateRole value) createRole,
    required TResult Function(DeleteRole value) deleteRole,
    required TResult Function(GetRoleUsers value) getRoleUsers,
    required TResult Function(GetRoles value) getRoles,
    required TResult Function(AddUserToRole value) addUserToRole,
    required TResult Function(RemoveUserToRole value) removeUserToRole,
  }) {
    return deleteRole(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CreateRole value)? createRole,
    TResult? Function(DeleteRole value)? deleteRole,
    TResult? Function(GetRoleUsers value)? getRoleUsers,
    TResult? Function(GetRoles value)? getRoles,
    TResult? Function(AddUserToRole value)? addUserToRole,
    TResult? Function(RemoveUserToRole value)? removeUserToRole,
  }) {
    return deleteRole?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CreateRole value)? createRole,
    TResult Function(DeleteRole value)? deleteRole,
    TResult Function(GetRoleUsers value)? getRoleUsers,
    TResult Function(GetRoles value)? getRoles,
    TResult Function(AddUserToRole value)? addUserToRole,
    TResult Function(RemoveUserToRole value)? removeUserToRole,
    required TResult orElse(),
  }) {
    if (deleteRole != null) {
      return deleteRole(this);
    }
    return orElse();
  }
}

abstract class DeleteRole implements RoleEvent {
  const factory DeleteRole(final String roleName) = _$DeleteRole;

  String get roleName;
  @JsonKey(ignore: true)
  _$$DeleteRoleCopyWith<_$DeleteRole> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetRoleUsersCopyWith<$Res> {
  factory _$$GetRoleUsersCopyWith(
          _$GetRoleUsers value, $Res Function(_$GetRoleUsers) then) =
      __$$GetRoleUsersCopyWithImpl<$Res>;
  @useResult
  $Res call({String roleName});
}

/// @nodoc
class __$$GetRoleUsersCopyWithImpl<$Res>
    extends _$RoleEventCopyWithImpl<$Res, _$GetRoleUsers>
    implements _$$GetRoleUsersCopyWith<$Res> {
  __$$GetRoleUsersCopyWithImpl(
      _$GetRoleUsers _value, $Res Function(_$GetRoleUsers) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roleName = null,
  }) {
    return _then(_$GetRoleUsers(
      null == roleName
          ? _value.roleName
          : roleName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetRoleUsers implements GetRoleUsers {
  const _$GetRoleUsers(this.roleName);

  @override
  final String roleName;

  @override
  String toString() {
    return 'RoleEvent.getRoleUsers(roleName: $roleName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetRoleUsers &&
            (identical(other.roleName, roleName) ||
                other.roleName == roleName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, roleName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetRoleUsersCopyWith<_$GetRoleUsers> get copyWith =>
      __$$GetRoleUsersCopyWithImpl<_$GetRoleUsers>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String roleName) createRole,
    required TResult Function(String roleName) deleteRole,
    required TResult Function(String roleName) getRoleUsers,
    required TResult Function() getRoles,
    required TResult Function(UserRole userRole) addUserToRole,
    required TResult Function(UserRole userRole) removeUserToRole,
  }) {
    return getRoleUsers(roleName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String roleName)? createRole,
    TResult? Function(String roleName)? deleteRole,
    TResult? Function(String roleName)? getRoleUsers,
    TResult? Function()? getRoles,
    TResult? Function(UserRole userRole)? addUserToRole,
    TResult? Function(UserRole userRole)? removeUserToRole,
  }) {
    return getRoleUsers?.call(roleName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String roleName)? createRole,
    TResult Function(String roleName)? deleteRole,
    TResult Function(String roleName)? getRoleUsers,
    TResult Function()? getRoles,
    TResult Function(UserRole userRole)? addUserToRole,
    TResult Function(UserRole userRole)? removeUserToRole,
    required TResult orElse(),
  }) {
    if (getRoleUsers != null) {
      return getRoleUsers(roleName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CreateRole value) createRole,
    required TResult Function(DeleteRole value) deleteRole,
    required TResult Function(GetRoleUsers value) getRoleUsers,
    required TResult Function(GetRoles value) getRoles,
    required TResult Function(AddUserToRole value) addUserToRole,
    required TResult Function(RemoveUserToRole value) removeUserToRole,
  }) {
    return getRoleUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CreateRole value)? createRole,
    TResult? Function(DeleteRole value)? deleteRole,
    TResult? Function(GetRoleUsers value)? getRoleUsers,
    TResult? Function(GetRoles value)? getRoles,
    TResult? Function(AddUserToRole value)? addUserToRole,
    TResult? Function(RemoveUserToRole value)? removeUserToRole,
  }) {
    return getRoleUsers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CreateRole value)? createRole,
    TResult Function(DeleteRole value)? deleteRole,
    TResult Function(GetRoleUsers value)? getRoleUsers,
    TResult Function(GetRoles value)? getRoles,
    TResult Function(AddUserToRole value)? addUserToRole,
    TResult Function(RemoveUserToRole value)? removeUserToRole,
    required TResult orElse(),
  }) {
    if (getRoleUsers != null) {
      return getRoleUsers(this);
    }
    return orElse();
  }
}

abstract class GetRoleUsers implements RoleEvent {
  const factory GetRoleUsers(final String roleName) = _$GetRoleUsers;

  String get roleName;
  @JsonKey(ignore: true)
  _$$GetRoleUsersCopyWith<_$GetRoleUsers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetRolesCopyWith<$Res> {
  factory _$$GetRolesCopyWith(
          _$GetRoles value, $Res Function(_$GetRoles) then) =
      __$$GetRolesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetRolesCopyWithImpl<$Res>
    extends _$RoleEventCopyWithImpl<$Res, _$GetRoles>
    implements _$$GetRolesCopyWith<$Res> {
  __$$GetRolesCopyWithImpl(_$GetRoles _value, $Res Function(_$GetRoles) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetRoles implements GetRoles {
  const _$GetRoles();

  @override
  String toString() {
    return 'RoleEvent.getRoles()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetRoles);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String roleName) createRole,
    required TResult Function(String roleName) deleteRole,
    required TResult Function(String roleName) getRoleUsers,
    required TResult Function() getRoles,
    required TResult Function(UserRole userRole) addUserToRole,
    required TResult Function(UserRole userRole) removeUserToRole,
  }) {
    return getRoles();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String roleName)? createRole,
    TResult? Function(String roleName)? deleteRole,
    TResult? Function(String roleName)? getRoleUsers,
    TResult? Function()? getRoles,
    TResult? Function(UserRole userRole)? addUserToRole,
    TResult? Function(UserRole userRole)? removeUserToRole,
  }) {
    return getRoles?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String roleName)? createRole,
    TResult Function(String roleName)? deleteRole,
    TResult Function(String roleName)? getRoleUsers,
    TResult Function()? getRoles,
    TResult Function(UserRole userRole)? addUserToRole,
    TResult Function(UserRole userRole)? removeUserToRole,
    required TResult orElse(),
  }) {
    if (getRoles != null) {
      return getRoles();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CreateRole value) createRole,
    required TResult Function(DeleteRole value) deleteRole,
    required TResult Function(GetRoleUsers value) getRoleUsers,
    required TResult Function(GetRoles value) getRoles,
    required TResult Function(AddUserToRole value) addUserToRole,
    required TResult Function(RemoveUserToRole value) removeUserToRole,
  }) {
    return getRoles(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CreateRole value)? createRole,
    TResult? Function(DeleteRole value)? deleteRole,
    TResult? Function(GetRoleUsers value)? getRoleUsers,
    TResult? Function(GetRoles value)? getRoles,
    TResult? Function(AddUserToRole value)? addUserToRole,
    TResult? Function(RemoveUserToRole value)? removeUserToRole,
  }) {
    return getRoles?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CreateRole value)? createRole,
    TResult Function(DeleteRole value)? deleteRole,
    TResult Function(GetRoleUsers value)? getRoleUsers,
    TResult Function(GetRoles value)? getRoles,
    TResult Function(AddUserToRole value)? addUserToRole,
    TResult Function(RemoveUserToRole value)? removeUserToRole,
    required TResult orElse(),
  }) {
    if (getRoles != null) {
      return getRoles(this);
    }
    return orElse();
  }
}

abstract class GetRoles implements RoleEvent {
  const factory GetRoles() = _$GetRoles;
}

/// @nodoc
abstract class _$$AddUserToRoleCopyWith<$Res> {
  factory _$$AddUserToRoleCopyWith(
          _$AddUserToRole value, $Res Function(_$AddUserToRole) then) =
      __$$AddUserToRoleCopyWithImpl<$Res>;
  @useResult
  $Res call({UserRole userRole});

  $UserRoleCopyWith<$Res> get userRole;
}

/// @nodoc
class __$$AddUserToRoleCopyWithImpl<$Res>
    extends _$RoleEventCopyWithImpl<$Res, _$AddUserToRole>
    implements _$$AddUserToRoleCopyWith<$Res> {
  __$$AddUserToRoleCopyWithImpl(
      _$AddUserToRole _value, $Res Function(_$AddUserToRole) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userRole = null,
  }) {
    return _then(_$AddUserToRole(
      null == userRole
          ? _value.userRole
          : userRole // ignore: cast_nullable_to_non_nullable
              as UserRole,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserRoleCopyWith<$Res> get userRole {
    return $UserRoleCopyWith<$Res>(_value.userRole, (value) {
      return _then(_value.copyWith(userRole: value));
    });
  }
}

/// @nodoc

class _$AddUserToRole implements AddUserToRole {
  const _$AddUserToRole(this.userRole);

  @override
  final UserRole userRole;

  @override
  String toString() {
    return 'RoleEvent.addUserToRole(userRole: $userRole)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddUserToRole &&
            (identical(other.userRole, userRole) ||
                other.userRole == userRole));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userRole);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddUserToRoleCopyWith<_$AddUserToRole> get copyWith =>
      __$$AddUserToRoleCopyWithImpl<_$AddUserToRole>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String roleName) createRole,
    required TResult Function(String roleName) deleteRole,
    required TResult Function(String roleName) getRoleUsers,
    required TResult Function() getRoles,
    required TResult Function(UserRole userRole) addUserToRole,
    required TResult Function(UserRole userRole) removeUserToRole,
  }) {
    return addUserToRole(userRole);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String roleName)? createRole,
    TResult? Function(String roleName)? deleteRole,
    TResult? Function(String roleName)? getRoleUsers,
    TResult? Function()? getRoles,
    TResult? Function(UserRole userRole)? addUserToRole,
    TResult? Function(UserRole userRole)? removeUserToRole,
  }) {
    return addUserToRole?.call(userRole);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String roleName)? createRole,
    TResult Function(String roleName)? deleteRole,
    TResult Function(String roleName)? getRoleUsers,
    TResult Function()? getRoles,
    TResult Function(UserRole userRole)? addUserToRole,
    TResult Function(UserRole userRole)? removeUserToRole,
    required TResult orElse(),
  }) {
    if (addUserToRole != null) {
      return addUserToRole(userRole);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CreateRole value) createRole,
    required TResult Function(DeleteRole value) deleteRole,
    required TResult Function(GetRoleUsers value) getRoleUsers,
    required TResult Function(GetRoles value) getRoles,
    required TResult Function(AddUserToRole value) addUserToRole,
    required TResult Function(RemoveUserToRole value) removeUserToRole,
  }) {
    return addUserToRole(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CreateRole value)? createRole,
    TResult? Function(DeleteRole value)? deleteRole,
    TResult? Function(GetRoleUsers value)? getRoleUsers,
    TResult? Function(GetRoles value)? getRoles,
    TResult? Function(AddUserToRole value)? addUserToRole,
    TResult? Function(RemoveUserToRole value)? removeUserToRole,
  }) {
    return addUserToRole?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CreateRole value)? createRole,
    TResult Function(DeleteRole value)? deleteRole,
    TResult Function(GetRoleUsers value)? getRoleUsers,
    TResult Function(GetRoles value)? getRoles,
    TResult Function(AddUserToRole value)? addUserToRole,
    TResult Function(RemoveUserToRole value)? removeUserToRole,
    required TResult orElse(),
  }) {
    if (addUserToRole != null) {
      return addUserToRole(this);
    }
    return orElse();
  }
}

abstract class AddUserToRole implements RoleEvent {
  const factory AddUserToRole(final UserRole userRole) = _$AddUserToRole;

  UserRole get userRole;
  @JsonKey(ignore: true)
  _$$AddUserToRoleCopyWith<_$AddUserToRole> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveUserToRoleCopyWith<$Res> {
  factory _$$RemoveUserToRoleCopyWith(
          _$RemoveUserToRole value, $Res Function(_$RemoveUserToRole) then) =
      __$$RemoveUserToRoleCopyWithImpl<$Res>;
  @useResult
  $Res call({UserRole userRole});

  $UserRoleCopyWith<$Res> get userRole;
}

/// @nodoc
class __$$RemoveUserToRoleCopyWithImpl<$Res>
    extends _$RoleEventCopyWithImpl<$Res, _$RemoveUserToRole>
    implements _$$RemoveUserToRoleCopyWith<$Res> {
  __$$RemoveUserToRoleCopyWithImpl(
      _$RemoveUserToRole _value, $Res Function(_$RemoveUserToRole) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userRole = null,
  }) {
    return _then(_$RemoveUserToRole(
      null == userRole
          ? _value.userRole
          : userRole // ignore: cast_nullable_to_non_nullable
              as UserRole,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserRoleCopyWith<$Res> get userRole {
    return $UserRoleCopyWith<$Res>(_value.userRole, (value) {
      return _then(_value.copyWith(userRole: value));
    });
  }
}

/// @nodoc

class _$RemoveUserToRole implements RemoveUserToRole {
  const _$RemoveUserToRole(this.userRole);

  @override
  final UserRole userRole;

  @override
  String toString() {
    return 'RoleEvent.removeUserToRole(userRole: $userRole)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveUserToRole &&
            (identical(other.userRole, userRole) ||
                other.userRole == userRole));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userRole);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveUserToRoleCopyWith<_$RemoveUserToRole> get copyWith =>
      __$$RemoveUserToRoleCopyWithImpl<_$RemoveUserToRole>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String roleName) createRole,
    required TResult Function(String roleName) deleteRole,
    required TResult Function(String roleName) getRoleUsers,
    required TResult Function() getRoles,
    required TResult Function(UserRole userRole) addUserToRole,
    required TResult Function(UserRole userRole) removeUserToRole,
  }) {
    return removeUserToRole(userRole);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String roleName)? createRole,
    TResult? Function(String roleName)? deleteRole,
    TResult? Function(String roleName)? getRoleUsers,
    TResult? Function()? getRoles,
    TResult? Function(UserRole userRole)? addUserToRole,
    TResult? Function(UserRole userRole)? removeUserToRole,
  }) {
    return removeUserToRole?.call(userRole);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String roleName)? createRole,
    TResult Function(String roleName)? deleteRole,
    TResult Function(String roleName)? getRoleUsers,
    TResult Function()? getRoles,
    TResult Function(UserRole userRole)? addUserToRole,
    TResult Function(UserRole userRole)? removeUserToRole,
    required TResult orElse(),
  }) {
    if (removeUserToRole != null) {
      return removeUserToRole(userRole);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CreateRole value) createRole,
    required TResult Function(DeleteRole value) deleteRole,
    required TResult Function(GetRoleUsers value) getRoleUsers,
    required TResult Function(GetRoles value) getRoles,
    required TResult Function(AddUserToRole value) addUserToRole,
    required TResult Function(RemoveUserToRole value) removeUserToRole,
  }) {
    return removeUserToRole(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CreateRole value)? createRole,
    TResult? Function(DeleteRole value)? deleteRole,
    TResult? Function(GetRoleUsers value)? getRoleUsers,
    TResult? Function(GetRoles value)? getRoles,
    TResult? Function(AddUserToRole value)? addUserToRole,
    TResult? Function(RemoveUserToRole value)? removeUserToRole,
  }) {
    return removeUserToRole?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CreateRole value)? createRole,
    TResult Function(DeleteRole value)? deleteRole,
    TResult Function(GetRoleUsers value)? getRoleUsers,
    TResult Function(GetRoles value)? getRoles,
    TResult Function(AddUserToRole value)? addUserToRole,
    TResult Function(RemoveUserToRole value)? removeUserToRole,
    required TResult orElse(),
  }) {
    if (removeUserToRole != null) {
      return removeUserToRole(this);
    }
    return orElse();
  }
}

abstract class RemoveUserToRole implements RoleEvent {
  const factory RemoveUserToRole(final UserRole userRole) = _$RemoveUserToRole;

  UserRole get userRole;
  @JsonKey(ignore: true)
  _$$RemoveUserToRoleCopyWith<_$RemoveUserToRole> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RoleState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() created,
    required TResult Function() loading,
    required TResult Function(List<RoleDto> roles) rolesLoaded,
    required TResult Function(List<UserRole> users) roleUsersLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? created,
    TResult? Function()? loading,
    TResult? Function(List<RoleDto> roles)? rolesLoaded,
    TResult? Function(List<UserRole> users)? roleUsersLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? created,
    TResult Function()? loading,
    TResult Function(List<RoleDto> roles)? rolesLoaded,
    TResult Function(List<UserRole> users)? roleUsersLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Created value) created,
    required TResult Function(Loading value) loading,
    required TResult Function(RolesLoaded value) rolesLoaded,
    required TResult Function(RoleUsersLoaded value) roleUsersLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Created value)? created,
    TResult? Function(Loading value)? loading,
    TResult? Function(RolesLoaded value)? rolesLoaded,
    TResult? Function(RoleUsersLoaded value)? roleUsersLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Created value)? created,
    TResult Function(Loading value)? loading,
    TResult Function(RolesLoaded value)? rolesLoaded,
    TResult Function(RoleUsersLoaded value)? roleUsersLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoleStateCopyWith<$Res> {
  factory $RoleStateCopyWith(RoleState value, $Res Function(RoleState) then) =
      _$RoleStateCopyWithImpl<$Res, RoleState>;
}

/// @nodoc
class _$RoleStateCopyWithImpl<$Res, $Val extends RoleState>
    implements $RoleStateCopyWith<$Res> {
  _$RoleStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$RoleStateCopyWithImpl<$Res, _$Initial>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'RoleState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() created,
    required TResult Function() loading,
    required TResult Function(List<RoleDto> roles) rolesLoaded,
    required TResult Function(List<UserRole> users) roleUsersLoaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? created,
    TResult? Function()? loading,
    TResult? Function(List<RoleDto> roles)? rolesLoaded,
    TResult? Function(List<UserRole> users)? roleUsersLoaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? created,
    TResult Function()? loading,
    TResult Function(List<RoleDto> roles)? rolesLoaded,
    TResult Function(List<UserRole> users)? roleUsersLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Created value) created,
    required TResult Function(Loading value) loading,
    required TResult Function(RolesLoaded value) rolesLoaded,
    required TResult Function(RoleUsersLoaded value) roleUsersLoaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Created value)? created,
    TResult? Function(Loading value)? loading,
    TResult? Function(RolesLoaded value)? rolesLoaded,
    TResult? Function(RoleUsersLoaded value)? roleUsersLoaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Created value)? created,
    TResult Function(Loading value)? loading,
    TResult Function(RolesLoaded value)? rolesLoaded,
    TResult Function(RoleUsersLoaded value)? roleUsersLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements RoleState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class _$$CreatedCopyWith<$Res> {
  factory _$$CreatedCopyWith(_$Created value, $Res Function(_$Created) then) =
      __$$CreatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreatedCopyWithImpl<$Res>
    extends _$RoleStateCopyWithImpl<$Res, _$Created>
    implements _$$CreatedCopyWith<$Res> {
  __$$CreatedCopyWithImpl(_$Created _value, $Res Function(_$Created) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Created implements Created {
  const _$Created();

  @override
  String toString() {
    return 'RoleState.created()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Created);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() created,
    required TResult Function() loading,
    required TResult Function(List<RoleDto> roles) rolesLoaded,
    required TResult Function(List<UserRole> users) roleUsersLoaded,
  }) {
    return created();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? created,
    TResult? Function()? loading,
    TResult? Function(List<RoleDto> roles)? rolesLoaded,
    TResult? Function(List<UserRole> users)? roleUsersLoaded,
  }) {
    return created?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? created,
    TResult Function()? loading,
    TResult Function(List<RoleDto> roles)? rolesLoaded,
    TResult Function(List<UserRole> users)? roleUsersLoaded,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Created value) created,
    required TResult Function(Loading value) loading,
    required TResult Function(RolesLoaded value) rolesLoaded,
    required TResult Function(RoleUsersLoaded value) roleUsersLoaded,
  }) {
    return created(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Created value)? created,
    TResult? Function(Loading value)? loading,
    TResult? Function(RolesLoaded value)? rolesLoaded,
    TResult? Function(RoleUsersLoaded value)? roleUsersLoaded,
  }) {
    return created?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Created value)? created,
    TResult Function(Loading value)? loading,
    TResult Function(RolesLoaded value)? rolesLoaded,
    TResult Function(RoleUsersLoaded value)? roleUsersLoaded,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created(this);
    }
    return orElse();
  }
}

abstract class Created implements RoleState {
  const factory Created() = _$Created;
}

/// @nodoc
abstract class _$$LoadingCopyWith<$Res> {
  factory _$$LoadingCopyWith(_$Loading value, $Res Function(_$Loading) then) =
      __$$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingCopyWithImpl<$Res>
    extends _$RoleStateCopyWithImpl<$Res, _$Loading>
    implements _$$LoadingCopyWith<$Res> {
  __$$LoadingCopyWithImpl(_$Loading _value, $Res Function(_$Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'RoleState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() created,
    required TResult Function() loading,
    required TResult Function(List<RoleDto> roles) rolesLoaded,
    required TResult Function(List<UserRole> users) roleUsersLoaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? created,
    TResult? Function()? loading,
    TResult? Function(List<RoleDto> roles)? rolesLoaded,
    TResult? Function(List<UserRole> users)? roleUsersLoaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? created,
    TResult Function()? loading,
    TResult Function(List<RoleDto> roles)? rolesLoaded,
    TResult Function(List<UserRole> users)? roleUsersLoaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Created value) created,
    required TResult Function(Loading value) loading,
    required TResult Function(RolesLoaded value) rolesLoaded,
    required TResult Function(RoleUsersLoaded value) roleUsersLoaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Created value)? created,
    TResult? Function(Loading value)? loading,
    TResult? Function(RolesLoaded value)? rolesLoaded,
    TResult? Function(RoleUsersLoaded value)? roleUsersLoaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Created value)? created,
    TResult Function(Loading value)? loading,
    TResult Function(RolesLoaded value)? rolesLoaded,
    TResult Function(RoleUsersLoaded value)? roleUsersLoaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements RoleState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class _$$RolesLoadedCopyWith<$Res> {
  factory _$$RolesLoadedCopyWith(
          _$RolesLoaded value, $Res Function(_$RolesLoaded) then) =
      __$$RolesLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<RoleDto> roles});
}

/// @nodoc
class __$$RolesLoadedCopyWithImpl<$Res>
    extends _$RoleStateCopyWithImpl<$Res, _$RolesLoaded>
    implements _$$RolesLoadedCopyWith<$Res> {
  __$$RolesLoadedCopyWithImpl(
      _$RolesLoaded _value, $Res Function(_$RolesLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roles = null,
  }) {
    return _then(_$RolesLoaded(
      null == roles
          ? _value._roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<RoleDto>,
    ));
  }
}

/// @nodoc

class _$RolesLoaded implements RolesLoaded {
  const _$RolesLoaded(final List<RoleDto> roles) : _roles = roles;

  final List<RoleDto> _roles;
  @override
  List<RoleDto> get roles {
    if (_roles is EqualUnmodifiableListView) return _roles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_roles);
  }

  @override
  String toString() {
    return 'RoleState.rolesLoaded(roles: $roles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RolesLoaded &&
            const DeepCollectionEquality().equals(other._roles, _roles));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_roles));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RolesLoadedCopyWith<_$RolesLoaded> get copyWith =>
      __$$RolesLoadedCopyWithImpl<_$RolesLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() created,
    required TResult Function() loading,
    required TResult Function(List<RoleDto> roles) rolesLoaded,
    required TResult Function(List<UserRole> users) roleUsersLoaded,
  }) {
    return rolesLoaded(roles);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? created,
    TResult? Function()? loading,
    TResult? Function(List<RoleDto> roles)? rolesLoaded,
    TResult? Function(List<UserRole> users)? roleUsersLoaded,
  }) {
    return rolesLoaded?.call(roles);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? created,
    TResult Function()? loading,
    TResult Function(List<RoleDto> roles)? rolesLoaded,
    TResult Function(List<UserRole> users)? roleUsersLoaded,
    required TResult orElse(),
  }) {
    if (rolesLoaded != null) {
      return rolesLoaded(roles);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Created value) created,
    required TResult Function(Loading value) loading,
    required TResult Function(RolesLoaded value) rolesLoaded,
    required TResult Function(RoleUsersLoaded value) roleUsersLoaded,
  }) {
    return rolesLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Created value)? created,
    TResult? Function(Loading value)? loading,
    TResult? Function(RolesLoaded value)? rolesLoaded,
    TResult? Function(RoleUsersLoaded value)? roleUsersLoaded,
  }) {
    return rolesLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Created value)? created,
    TResult Function(Loading value)? loading,
    TResult Function(RolesLoaded value)? rolesLoaded,
    TResult Function(RoleUsersLoaded value)? roleUsersLoaded,
    required TResult orElse(),
  }) {
    if (rolesLoaded != null) {
      return rolesLoaded(this);
    }
    return orElse();
  }
}

abstract class RolesLoaded implements RoleState {
  const factory RolesLoaded(final List<RoleDto> roles) = _$RolesLoaded;

  List<RoleDto> get roles;
  @JsonKey(ignore: true)
  _$$RolesLoadedCopyWith<_$RolesLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RoleUsersLoadedCopyWith<$Res> {
  factory _$$RoleUsersLoadedCopyWith(
          _$RoleUsersLoaded value, $Res Function(_$RoleUsersLoaded) then) =
      __$$RoleUsersLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<UserRole> users});
}

/// @nodoc
class __$$RoleUsersLoadedCopyWithImpl<$Res>
    extends _$RoleStateCopyWithImpl<$Res, _$RoleUsersLoaded>
    implements _$$RoleUsersLoadedCopyWith<$Res> {
  __$$RoleUsersLoadedCopyWithImpl(
      _$RoleUsersLoaded _value, $Res Function(_$RoleUsersLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
  }) {
    return _then(_$RoleUsersLoaded(
      null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserRole>,
    ));
  }
}

/// @nodoc

class _$RoleUsersLoaded implements RoleUsersLoaded {
  const _$RoleUsersLoaded(final List<UserRole> users) : _users = users;

  final List<UserRole> _users;
  @override
  List<UserRole> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  String toString() {
    return 'RoleState.roleUsersLoaded(users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoleUsersLoaded &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_users));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RoleUsersLoadedCopyWith<_$RoleUsersLoaded> get copyWith =>
      __$$RoleUsersLoadedCopyWithImpl<_$RoleUsersLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() created,
    required TResult Function() loading,
    required TResult Function(List<RoleDto> roles) rolesLoaded,
    required TResult Function(List<UserRole> users) roleUsersLoaded,
  }) {
    return roleUsersLoaded(users);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? created,
    TResult? Function()? loading,
    TResult? Function(List<RoleDto> roles)? rolesLoaded,
    TResult? Function(List<UserRole> users)? roleUsersLoaded,
  }) {
    return roleUsersLoaded?.call(users);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? created,
    TResult Function()? loading,
    TResult Function(List<RoleDto> roles)? rolesLoaded,
    TResult Function(List<UserRole> users)? roleUsersLoaded,
    required TResult orElse(),
  }) {
    if (roleUsersLoaded != null) {
      return roleUsersLoaded(users);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Created value) created,
    required TResult Function(Loading value) loading,
    required TResult Function(RolesLoaded value) rolesLoaded,
    required TResult Function(RoleUsersLoaded value) roleUsersLoaded,
  }) {
    return roleUsersLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Created value)? created,
    TResult? Function(Loading value)? loading,
    TResult? Function(RolesLoaded value)? rolesLoaded,
    TResult? Function(RoleUsersLoaded value)? roleUsersLoaded,
  }) {
    return roleUsersLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Created value)? created,
    TResult Function(Loading value)? loading,
    TResult Function(RolesLoaded value)? rolesLoaded,
    TResult Function(RoleUsersLoaded value)? roleUsersLoaded,
    required TResult orElse(),
  }) {
    if (roleUsersLoaded != null) {
      return roleUsersLoaded(this);
    }
    return orElse();
  }
}

abstract class RoleUsersLoaded implements RoleState {
  const factory RoleUsersLoaded(final List<UserRole> users) = _$RoleUsersLoaded;

  List<UserRole> get users;
  @JsonKey(ignore: true)
  _$$RoleUsersLoadedCopyWith<_$RoleUsersLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
