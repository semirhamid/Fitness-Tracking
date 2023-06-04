// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_role_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserRoleEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(UserRole userRole) create,
    required TResult Function(UserRole userRole) delete,
    required TResult Function(String email) getUserRole,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(UserRole userRole)? create,
    TResult? Function(UserRole userRole)? delete,
    TResult? Function(String email)? getUserRole,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(UserRole userRole)? create,
    TResult Function(UserRole userRole)? delete,
    TResult Function(String email)? getUserRole,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Create value) create,
    required TResult Function(Delete value) delete,
    required TResult Function(GetRole value) getUserRole,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Create value)? create,
    TResult? Function(Delete value)? delete,
    TResult? Function(GetRole value)? getUserRole,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Create value)? create,
    TResult Function(Delete value)? delete,
    TResult Function(GetRole value)? getUserRole,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRoleEventCopyWith<$Res> {
  factory $UserRoleEventCopyWith(
          UserRoleEvent value, $Res Function(UserRoleEvent) then) =
      _$UserRoleEventCopyWithImpl<$Res, UserRoleEvent>;
}

/// @nodoc
class _$UserRoleEventCopyWithImpl<$Res, $Val extends UserRoleEvent>
    implements $UserRoleEventCopyWith<$Res> {
  _$UserRoleEventCopyWithImpl(this._value, this._then);

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
    extends _$UserRoleEventCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'UserRoleEvent.initial()';
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
    required TResult Function(UserRole userRole) create,
    required TResult Function(UserRole userRole) delete,
    required TResult Function(String email) getUserRole,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(UserRole userRole)? create,
    TResult? Function(UserRole userRole)? delete,
    TResult? Function(String email)? getUserRole,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(UserRole userRole)? create,
    TResult Function(UserRole userRole)? delete,
    TResult Function(String email)? getUserRole,
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
    required TResult Function(Create value) create,
    required TResult Function(Delete value) delete,
    required TResult Function(GetRole value) getUserRole,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Create value)? create,
    TResult? Function(Delete value)? delete,
    TResult? Function(GetRole value)? getUserRole,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Create value)? create,
    TResult Function(Delete value)? delete,
    TResult Function(GetRole value)? getUserRole,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements UserRoleEvent {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$CreateCopyWith<$Res> {
  factory _$$CreateCopyWith(_$Create value, $Res Function(_$Create) then) =
      __$$CreateCopyWithImpl<$Res>;
  @useResult
  $Res call({UserRole userRole});

  $UserRoleCopyWith<$Res> get userRole;
}

/// @nodoc
class __$$CreateCopyWithImpl<$Res>
    extends _$UserRoleEventCopyWithImpl<$Res, _$Create>
    implements _$$CreateCopyWith<$Res> {
  __$$CreateCopyWithImpl(_$Create _value, $Res Function(_$Create) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userRole = null,
  }) {
    return _then(_$Create(
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

class _$Create implements Create {
  const _$Create(this.userRole);

  @override
  final UserRole userRole;

  @override
  String toString() {
    return 'UserRoleEvent.create(userRole: $userRole)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Create &&
            (identical(other.userRole, userRole) ||
                other.userRole == userRole));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userRole);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateCopyWith<_$Create> get copyWith =>
      __$$CreateCopyWithImpl<_$Create>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(UserRole userRole) create,
    required TResult Function(UserRole userRole) delete,
    required TResult Function(String email) getUserRole,
  }) {
    return create(userRole);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(UserRole userRole)? create,
    TResult? Function(UserRole userRole)? delete,
    TResult? Function(String email)? getUserRole,
  }) {
    return create?.call(userRole);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(UserRole userRole)? create,
    TResult Function(UserRole userRole)? delete,
    TResult Function(String email)? getUserRole,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(userRole);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Create value) create,
    required TResult Function(Delete value) delete,
    required TResult Function(GetRole value) getUserRole,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Create value)? create,
    TResult? Function(Delete value)? delete,
    TResult? Function(GetRole value)? getUserRole,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Create value)? create,
    TResult Function(Delete value)? delete,
    TResult Function(GetRole value)? getUserRole,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class Create implements UserRoleEvent {
  const factory Create(final UserRole userRole) = _$Create;

  UserRole get userRole;
  @JsonKey(ignore: true)
  _$$CreateCopyWith<_$Create> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteCopyWith<$Res> {
  factory _$$DeleteCopyWith(_$Delete value, $Res Function(_$Delete) then) =
      __$$DeleteCopyWithImpl<$Res>;
  @useResult
  $Res call({UserRole userRole});

  $UserRoleCopyWith<$Res> get userRole;
}

/// @nodoc
class __$$DeleteCopyWithImpl<$Res>
    extends _$UserRoleEventCopyWithImpl<$Res, _$Delete>
    implements _$$DeleteCopyWith<$Res> {
  __$$DeleteCopyWithImpl(_$Delete _value, $Res Function(_$Delete) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userRole = null,
  }) {
    return _then(_$Delete(
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

class _$Delete implements Delete {
  const _$Delete(this.userRole);

  @override
  final UserRole userRole;

  @override
  String toString() {
    return 'UserRoleEvent.delete(userRole: $userRole)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Delete &&
            (identical(other.userRole, userRole) ||
                other.userRole == userRole));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userRole);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteCopyWith<_$Delete> get copyWith =>
      __$$DeleteCopyWithImpl<_$Delete>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(UserRole userRole) create,
    required TResult Function(UserRole userRole) delete,
    required TResult Function(String email) getUserRole,
  }) {
    return delete(userRole);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(UserRole userRole)? create,
    TResult? Function(UserRole userRole)? delete,
    TResult? Function(String email)? getUserRole,
  }) {
    return delete?.call(userRole);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(UserRole userRole)? create,
    TResult Function(UserRole userRole)? delete,
    TResult Function(String email)? getUserRole,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(userRole);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Create value) create,
    required TResult Function(Delete value) delete,
    required TResult Function(GetRole value) getUserRole,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Create value)? create,
    TResult? Function(Delete value)? delete,
    TResult? Function(GetRole value)? getUserRole,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Create value)? create,
    TResult Function(Delete value)? delete,
    TResult Function(GetRole value)? getUserRole,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class Delete implements UserRoleEvent {
  const factory Delete(final UserRole userRole) = _$Delete;

  UserRole get userRole;
  @JsonKey(ignore: true)
  _$$DeleteCopyWith<_$Delete> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetRoleCopyWith<$Res> {
  factory _$$GetRoleCopyWith(_$GetRole value, $Res Function(_$GetRole) then) =
      __$$GetRoleCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$GetRoleCopyWithImpl<$Res>
    extends _$UserRoleEventCopyWithImpl<$Res, _$GetRole>
    implements _$$GetRoleCopyWith<$Res> {
  __$$GetRoleCopyWithImpl(_$GetRole _value, $Res Function(_$GetRole) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$GetRole(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetRole implements GetRole {
  const _$GetRole(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'UserRoleEvent.getUserRole(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetRole &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetRoleCopyWith<_$GetRole> get copyWith =>
      __$$GetRoleCopyWithImpl<_$GetRole>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(UserRole userRole) create,
    required TResult Function(UserRole userRole) delete,
    required TResult Function(String email) getUserRole,
  }) {
    return getUserRole(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(UserRole userRole)? create,
    TResult? Function(UserRole userRole)? delete,
    TResult? Function(String email)? getUserRole,
  }) {
    return getUserRole?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(UserRole userRole)? create,
    TResult Function(UserRole userRole)? delete,
    TResult Function(String email)? getUserRole,
    required TResult orElse(),
  }) {
    if (getUserRole != null) {
      return getUserRole(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Create value) create,
    required TResult Function(Delete value) delete,
    required TResult Function(GetRole value) getUserRole,
  }) {
    return getUserRole(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Create value)? create,
    TResult? Function(Delete value)? delete,
    TResult? Function(GetRole value)? getUserRole,
  }) {
    return getUserRole?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Create value)? create,
    TResult Function(Delete value)? delete,
    TResult Function(GetRole value)? getUserRole,
    required TResult orElse(),
  }) {
    if (getUserRole != null) {
      return getUserRole(this);
    }
    return orElse();
  }
}

abstract class GetRole implements UserRoleEvent {
  const factory GetRole(final String email) = _$GetRole;

  String get email;
  @JsonKey(ignore: true)
  _$$GetRoleCopyWith<_$GetRole> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserRoleState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(UserRoleDto userRoleDto) getUserRole,
    required TResult Function(UserRole userRole) setUserRole,
    required TResult Function() loading,
    required TResult Function() notLoading,
    required TResult Function() loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(UserRoleDto userRoleDto)? getUserRole,
    TResult? Function(UserRole userRole)? setUserRole,
    TResult? Function()? loading,
    TResult? Function()? notLoading,
    TResult? Function()? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(UserRoleDto userRoleDto)? getUserRole,
    TResult Function(UserRole userRole)? setUserRole,
    TResult Function()? loading,
    TResult Function()? notLoading,
    TResult Function()? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetUserRole value) getUserRole,
    required TResult Function(SetUserRole value) setUserRole,
    required TResult Function(Loading value) loading,
    required TResult Function(NotLoading value) notLoading,
    required TResult Function(Loaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetUserRole value)? getUserRole,
    TResult? Function(SetUserRole value)? setUserRole,
    TResult? Function(Loading value)? loading,
    TResult? Function(NotLoading value)? notLoading,
    TResult? Function(Loaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetUserRole value)? getUserRole,
    TResult Function(SetUserRole value)? setUserRole,
    TResult Function(Loading value)? loading,
    TResult Function(NotLoading value)? notLoading,
    TResult Function(Loaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRoleStateCopyWith<$Res> {
  factory $UserRoleStateCopyWith(
          UserRoleState value, $Res Function(UserRoleState) then) =
      _$UserRoleStateCopyWithImpl<$Res, UserRoleState>;
}

/// @nodoc
class _$UserRoleStateCopyWithImpl<$Res, $Val extends UserRoleState>
    implements $UserRoleStateCopyWith<$Res> {
  _$UserRoleStateCopyWithImpl(this._value, this._then);

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
    extends _$UserRoleStateCopyWithImpl<$Res, _$Initial>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'UserRoleState.initial()';
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
    required TResult Function(UserRoleDto userRoleDto) getUserRole,
    required TResult Function(UserRole userRole) setUserRole,
    required TResult Function() loading,
    required TResult Function() notLoading,
    required TResult Function() loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(UserRoleDto userRoleDto)? getUserRole,
    TResult? Function(UserRole userRole)? setUserRole,
    TResult? Function()? loading,
    TResult? Function()? notLoading,
    TResult? Function()? loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(UserRoleDto userRoleDto)? getUserRole,
    TResult Function(UserRole userRole)? setUserRole,
    TResult Function()? loading,
    TResult Function()? notLoading,
    TResult Function()? loaded,
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
    required TResult Function(GetUserRole value) getUserRole,
    required TResult Function(SetUserRole value) setUserRole,
    required TResult Function(Loading value) loading,
    required TResult Function(NotLoading value) notLoading,
    required TResult Function(Loaded value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetUserRole value)? getUserRole,
    TResult? Function(SetUserRole value)? setUserRole,
    TResult? Function(Loading value)? loading,
    TResult? Function(NotLoading value)? notLoading,
    TResult? Function(Loaded value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetUserRole value)? getUserRole,
    TResult Function(SetUserRole value)? setUserRole,
    TResult Function(Loading value)? loading,
    TResult Function(NotLoading value)? notLoading,
    TResult Function(Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements UserRoleState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class _$$GetUserRoleCopyWith<$Res> {
  factory _$$GetUserRoleCopyWith(
          _$GetUserRole value, $Res Function(_$GetUserRole) then) =
      __$$GetUserRoleCopyWithImpl<$Res>;
  @useResult
  $Res call({UserRoleDto userRoleDto});

  $UserRoleDtoCopyWith<$Res> get userRoleDto;
}

/// @nodoc
class __$$GetUserRoleCopyWithImpl<$Res>
    extends _$UserRoleStateCopyWithImpl<$Res, _$GetUserRole>
    implements _$$GetUserRoleCopyWith<$Res> {
  __$$GetUserRoleCopyWithImpl(
      _$GetUserRole _value, $Res Function(_$GetUserRole) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userRoleDto = null,
  }) {
    return _then(_$GetUserRole(
      null == userRoleDto
          ? _value.userRoleDto
          : userRoleDto // ignore: cast_nullable_to_non_nullable
              as UserRoleDto,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserRoleDtoCopyWith<$Res> get userRoleDto {
    return $UserRoleDtoCopyWith<$Res>(_value.userRoleDto, (value) {
      return _then(_value.copyWith(userRoleDto: value));
    });
  }
}

/// @nodoc

class _$GetUserRole implements GetUserRole {
  const _$GetUserRole(this.userRoleDto);

  @override
  final UserRoleDto userRoleDto;

  @override
  String toString() {
    return 'UserRoleState.getUserRole(userRoleDto: $userRoleDto)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUserRole &&
            (identical(other.userRoleDto, userRoleDto) ||
                other.userRoleDto == userRoleDto));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userRoleDto);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUserRoleCopyWith<_$GetUserRole> get copyWith =>
      __$$GetUserRoleCopyWithImpl<_$GetUserRole>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(UserRoleDto userRoleDto) getUserRole,
    required TResult Function(UserRole userRole) setUserRole,
    required TResult Function() loading,
    required TResult Function() notLoading,
    required TResult Function() loaded,
  }) {
    return getUserRole(userRoleDto);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(UserRoleDto userRoleDto)? getUserRole,
    TResult? Function(UserRole userRole)? setUserRole,
    TResult? Function()? loading,
    TResult? Function()? notLoading,
    TResult? Function()? loaded,
  }) {
    return getUserRole?.call(userRoleDto);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(UserRoleDto userRoleDto)? getUserRole,
    TResult Function(UserRole userRole)? setUserRole,
    TResult Function()? loading,
    TResult Function()? notLoading,
    TResult Function()? loaded,
    required TResult orElse(),
  }) {
    if (getUserRole != null) {
      return getUserRole(userRoleDto);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetUserRole value) getUserRole,
    required TResult Function(SetUserRole value) setUserRole,
    required TResult Function(Loading value) loading,
    required TResult Function(NotLoading value) notLoading,
    required TResult Function(Loaded value) loaded,
  }) {
    return getUserRole(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetUserRole value)? getUserRole,
    TResult? Function(SetUserRole value)? setUserRole,
    TResult? Function(Loading value)? loading,
    TResult? Function(NotLoading value)? notLoading,
    TResult? Function(Loaded value)? loaded,
  }) {
    return getUserRole?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetUserRole value)? getUserRole,
    TResult Function(SetUserRole value)? setUserRole,
    TResult Function(Loading value)? loading,
    TResult Function(NotLoading value)? notLoading,
    TResult Function(Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (getUserRole != null) {
      return getUserRole(this);
    }
    return orElse();
  }
}

abstract class GetUserRole implements UserRoleState {
  const factory GetUserRole(final UserRoleDto userRoleDto) = _$GetUserRole;

  UserRoleDto get userRoleDto;
  @JsonKey(ignore: true)
  _$$GetUserRoleCopyWith<_$GetUserRole> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetUserRoleCopyWith<$Res> {
  factory _$$SetUserRoleCopyWith(
          _$SetUserRole value, $Res Function(_$SetUserRole) then) =
      __$$SetUserRoleCopyWithImpl<$Res>;
  @useResult
  $Res call({UserRole userRole});

  $UserRoleCopyWith<$Res> get userRole;
}

/// @nodoc
class __$$SetUserRoleCopyWithImpl<$Res>
    extends _$UserRoleStateCopyWithImpl<$Res, _$SetUserRole>
    implements _$$SetUserRoleCopyWith<$Res> {
  __$$SetUserRoleCopyWithImpl(
      _$SetUserRole _value, $Res Function(_$SetUserRole) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userRole = null,
  }) {
    return _then(_$SetUserRole(
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

class _$SetUserRole implements SetUserRole {
  const _$SetUserRole(this.userRole);

  @override
  final UserRole userRole;

  @override
  String toString() {
    return 'UserRoleState.setUserRole(userRole: $userRole)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetUserRole &&
            (identical(other.userRole, userRole) ||
                other.userRole == userRole));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userRole);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetUserRoleCopyWith<_$SetUserRole> get copyWith =>
      __$$SetUserRoleCopyWithImpl<_$SetUserRole>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(UserRoleDto userRoleDto) getUserRole,
    required TResult Function(UserRole userRole) setUserRole,
    required TResult Function() loading,
    required TResult Function() notLoading,
    required TResult Function() loaded,
  }) {
    return setUserRole(userRole);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(UserRoleDto userRoleDto)? getUserRole,
    TResult? Function(UserRole userRole)? setUserRole,
    TResult? Function()? loading,
    TResult? Function()? notLoading,
    TResult? Function()? loaded,
  }) {
    return setUserRole?.call(userRole);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(UserRoleDto userRoleDto)? getUserRole,
    TResult Function(UserRole userRole)? setUserRole,
    TResult Function()? loading,
    TResult Function()? notLoading,
    TResult Function()? loaded,
    required TResult orElse(),
  }) {
    if (setUserRole != null) {
      return setUserRole(userRole);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetUserRole value) getUserRole,
    required TResult Function(SetUserRole value) setUserRole,
    required TResult Function(Loading value) loading,
    required TResult Function(NotLoading value) notLoading,
    required TResult Function(Loaded value) loaded,
  }) {
    return setUserRole(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetUserRole value)? getUserRole,
    TResult? Function(SetUserRole value)? setUserRole,
    TResult? Function(Loading value)? loading,
    TResult? Function(NotLoading value)? notLoading,
    TResult? Function(Loaded value)? loaded,
  }) {
    return setUserRole?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetUserRole value)? getUserRole,
    TResult Function(SetUserRole value)? setUserRole,
    TResult Function(Loading value)? loading,
    TResult Function(NotLoading value)? notLoading,
    TResult Function(Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (setUserRole != null) {
      return setUserRole(this);
    }
    return orElse();
  }
}

abstract class SetUserRole implements UserRoleState {
  const factory SetUserRole(final UserRole userRole) = _$SetUserRole;

  UserRole get userRole;
  @JsonKey(ignore: true)
  _$$SetUserRoleCopyWith<_$SetUserRole> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingCopyWith<$Res> {
  factory _$$LoadingCopyWith(_$Loading value, $Res Function(_$Loading) then) =
      __$$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingCopyWithImpl<$Res>
    extends _$UserRoleStateCopyWithImpl<$Res, _$Loading>
    implements _$$LoadingCopyWith<$Res> {
  __$$LoadingCopyWithImpl(_$Loading _value, $Res Function(_$Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'UserRoleState.loading()';
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
    required TResult Function(UserRoleDto userRoleDto) getUserRole,
    required TResult Function(UserRole userRole) setUserRole,
    required TResult Function() loading,
    required TResult Function() notLoading,
    required TResult Function() loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(UserRoleDto userRoleDto)? getUserRole,
    TResult? Function(UserRole userRole)? setUserRole,
    TResult? Function()? loading,
    TResult? Function()? notLoading,
    TResult? Function()? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(UserRoleDto userRoleDto)? getUserRole,
    TResult Function(UserRole userRole)? setUserRole,
    TResult Function()? loading,
    TResult Function()? notLoading,
    TResult Function()? loaded,
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
    required TResult Function(GetUserRole value) getUserRole,
    required TResult Function(SetUserRole value) setUserRole,
    required TResult Function(Loading value) loading,
    required TResult Function(NotLoading value) notLoading,
    required TResult Function(Loaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetUserRole value)? getUserRole,
    TResult? Function(SetUserRole value)? setUserRole,
    TResult? Function(Loading value)? loading,
    TResult? Function(NotLoading value)? notLoading,
    TResult? Function(Loaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetUserRole value)? getUserRole,
    TResult Function(SetUserRole value)? setUserRole,
    TResult Function(Loading value)? loading,
    TResult Function(NotLoading value)? notLoading,
    TResult Function(Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements UserRoleState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class _$$NotLoadingCopyWith<$Res> {
  factory _$$NotLoadingCopyWith(
          _$NotLoading value, $Res Function(_$NotLoading) then) =
      __$$NotLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotLoadingCopyWithImpl<$Res>
    extends _$UserRoleStateCopyWithImpl<$Res, _$NotLoading>
    implements _$$NotLoadingCopyWith<$Res> {
  __$$NotLoadingCopyWithImpl(
      _$NotLoading _value, $Res Function(_$NotLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NotLoading implements NotLoading {
  const _$NotLoading();

  @override
  String toString() {
    return 'UserRoleState.notLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NotLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(UserRoleDto userRoleDto) getUserRole,
    required TResult Function(UserRole userRole) setUserRole,
    required TResult Function() loading,
    required TResult Function() notLoading,
    required TResult Function() loaded,
  }) {
    return notLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(UserRoleDto userRoleDto)? getUserRole,
    TResult? Function(UserRole userRole)? setUserRole,
    TResult? Function()? loading,
    TResult? Function()? notLoading,
    TResult? Function()? loaded,
  }) {
    return notLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(UserRoleDto userRoleDto)? getUserRole,
    TResult Function(UserRole userRole)? setUserRole,
    TResult Function()? loading,
    TResult Function()? notLoading,
    TResult Function()? loaded,
    required TResult orElse(),
  }) {
    if (notLoading != null) {
      return notLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetUserRole value) getUserRole,
    required TResult Function(SetUserRole value) setUserRole,
    required TResult Function(Loading value) loading,
    required TResult Function(NotLoading value) notLoading,
    required TResult Function(Loaded value) loaded,
  }) {
    return notLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetUserRole value)? getUserRole,
    TResult? Function(SetUserRole value)? setUserRole,
    TResult? Function(Loading value)? loading,
    TResult? Function(NotLoading value)? notLoading,
    TResult? Function(Loaded value)? loaded,
  }) {
    return notLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetUserRole value)? getUserRole,
    TResult Function(SetUserRole value)? setUserRole,
    TResult Function(Loading value)? loading,
    TResult Function(NotLoading value)? notLoading,
    TResult Function(Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (notLoading != null) {
      return notLoading(this);
    }
    return orElse();
  }
}

abstract class NotLoading implements UserRoleState {
  const factory NotLoading() = _$NotLoading;
}

/// @nodoc
abstract class _$$LoadedCopyWith<$Res> {
  factory _$$LoadedCopyWith(_$Loaded value, $Res Function(_$Loaded) then) =
      __$$LoadedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadedCopyWithImpl<$Res>
    extends _$UserRoleStateCopyWithImpl<$Res, _$Loaded>
    implements _$$LoadedCopyWith<$Res> {
  __$$LoadedCopyWithImpl(_$Loaded _value, $Res Function(_$Loaded) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Loaded implements Loaded {
  const _$Loaded();

  @override
  String toString() {
    return 'UserRoleState.loaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Loaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(UserRoleDto userRoleDto) getUserRole,
    required TResult Function(UserRole userRole) setUserRole,
    required TResult Function() loading,
    required TResult Function() notLoading,
    required TResult Function() loaded,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(UserRoleDto userRoleDto)? getUserRole,
    TResult? Function(UserRole userRole)? setUserRole,
    TResult? Function()? loading,
    TResult? Function()? notLoading,
    TResult? Function()? loaded,
  }) {
    return loaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(UserRoleDto userRoleDto)? getUserRole,
    TResult Function(UserRole userRole)? setUserRole,
    TResult Function()? loading,
    TResult Function()? notLoading,
    TResult Function()? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetUserRole value) getUserRole,
    required TResult Function(SetUserRole value) setUserRole,
    required TResult Function(Loading value) loading,
    required TResult Function(NotLoading value) notLoading,
    required TResult Function(Loaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetUserRole value)? getUserRole,
    TResult? Function(SetUserRole value)? setUserRole,
    TResult? Function(Loading value)? loading,
    TResult? Function(NotLoading value)? notLoading,
    TResult? Function(Loaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetUserRole value)? getUserRole,
    TResult Function(SetUserRole value)? setUserRole,
    TResult Function(Loading value)? loading,
    TResult Function(NotLoading value)? notLoading,
    TResult Function(Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class Loaded implements UserRoleState {
  const factory Loaded() = _$Loaded;
}
