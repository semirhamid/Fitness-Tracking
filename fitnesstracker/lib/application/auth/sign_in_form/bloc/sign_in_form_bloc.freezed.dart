// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignInFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(
            Name name, EmailAddress emailAddress, Password password)
        registerPressed,
    required TResult Function(EmailAddress emailAddress, Password password)
        signinPressed,
    required TResult Function() signOutPressed,
    required TResult Function(String newPassword) changePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(Name name, EmailAddress emailAddress, Password password)?
        registerPressed,
    TResult? Function(EmailAddress emailAddress, Password password)?
        signinPressed,
    TResult? Function()? signOutPressed,
    TResult? Function(String newPassword)? changePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(Name name, EmailAddress emailAddress, Password password)?
        registerPressed,
    TResult Function(EmailAddress emailAddress, Password password)?
        signinPressed,
    TResult Function()? signOutPressed,
    TResult Function(String newPassword)? changePassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(Register value) registerPressed,
    required TResult Function(Signin value) signinPressed,
    required TResult Function(SignOut value) signOutPressed,
    required TResult Function(CheckAuth value) changePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(Register value)? registerPressed,
    TResult? Function(Signin value)? signinPressed,
    TResult? Function(SignOut value)? signOutPressed,
    TResult? Function(CheckAuth value)? changePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(Register value)? registerPressed,
    TResult Function(Signin value)? signinPressed,
    TResult Function(SignOut value)? signOutPressed,
    TResult Function(CheckAuth value)? changePassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInFormEventCopyWith<$Res> {
  factory $SignInFormEventCopyWith(
          SignInFormEvent value, $Res Function(SignInFormEvent) then) =
      _$SignInFormEventCopyWithImpl<$Res, SignInFormEvent>;
}

/// @nodoc
class _$SignInFormEventCopyWithImpl<$Res, $Val extends SignInFormEvent>
    implements $SignInFormEventCopyWith<$Res> {
  _$SignInFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_EmailChangedCopyWith<$Res> {
  factory _$$_EmailChangedCopyWith(
          _$_EmailChanged value, $Res Function(_$_EmailChanged) then) =
      __$$_EmailChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String emailStr});
}

/// @nodoc
class __$$_EmailChangedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res, _$_EmailChanged>
    implements _$$_EmailChangedCopyWith<$Res> {
  __$$_EmailChangedCopyWithImpl(
      _$_EmailChanged _value, $Res Function(_$_EmailChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailStr = null,
  }) {
    return _then(_$_EmailChanged(
      null == emailStr
          ? _value.emailStr
          : emailStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EmailChanged implements _EmailChanged {
  const _$_EmailChanged(this.emailStr);

  @override
  final String emailStr;

  @override
  String toString() {
    return 'SignInFormEvent.emailChanged(emailStr: $emailStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmailChanged &&
            (identical(other.emailStr, emailStr) ||
                other.emailStr == emailStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, emailStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmailChangedCopyWith<_$_EmailChanged> get copyWith =>
      __$$_EmailChangedCopyWithImpl<_$_EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(
            Name name, EmailAddress emailAddress, Password password)
        registerPressed,
    required TResult Function(EmailAddress emailAddress, Password password)
        signinPressed,
    required TResult Function() signOutPressed,
    required TResult Function(String newPassword) changePassword,
  }) {
    return emailChanged(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(Name name, EmailAddress emailAddress, Password password)?
        registerPressed,
    TResult? Function(EmailAddress emailAddress, Password password)?
        signinPressed,
    TResult? Function()? signOutPressed,
    TResult? Function(String newPassword)? changePassword,
  }) {
    return emailChanged?.call(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(Name name, EmailAddress emailAddress, Password password)?
        registerPressed,
    TResult Function(EmailAddress emailAddress, Password password)?
        signinPressed,
    TResult Function()? signOutPressed,
    TResult Function(String newPassword)? changePassword,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(emailStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(Register value) registerPressed,
    required TResult Function(Signin value) signinPressed,
    required TResult Function(SignOut value) signOutPressed,
    required TResult Function(CheckAuth value) changePassword,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(Register value)? registerPressed,
    TResult? Function(Signin value)? signinPressed,
    TResult? Function(SignOut value)? signOutPressed,
    TResult? Function(CheckAuth value)? changePassword,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(Register value)? registerPressed,
    TResult Function(Signin value)? signinPressed,
    TResult Function(SignOut value)? signOutPressed,
    TResult Function(CheckAuth value)? changePassword,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailChanged implements SignInFormEvent {
  const factory _EmailChanged(final String emailStr) = _$_EmailChanged;

  String get emailStr;
  @JsonKey(ignore: true)
  _$$_EmailChangedCopyWith<_$_EmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PasswordChangedCopyWith<$Res> {
  factory _$$_PasswordChangedCopyWith(
          _$_PasswordChanged value, $Res Function(_$_PasswordChanged) then) =
      __$$_PasswordChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String passwordStr});
}

/// @nodoc
class __$$_PasswordChangedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res, _$_PasswordChanged>
    implements _$$_PasswordChangedCopyWith<$Res> {
  __$$_PasswordChangedCopyWithImpl(
      _$_PasswordChanged _value, $Res Function(_$_PasswordChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? passwordStr = null,
  }) {
    return _then(_$_PasswordChanged(
      null == passwordStr
          ? _value.passwordStr
          : passwordStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PasswordChanged implements _PasswordChanged {
  const _$_PasswordChanged(this.passwordStr);

  @override
  final String passwordStr;

  @override
  String toString() {
    return 'SignInFormEvent.passwordChanged(passwordStr: $passwordStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PasswordChanged &&
            (identical(other.passwordStr, passwordStr) ||
                other.passwordStr == passwordStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, passwordStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PasswordChangedCopyWith<_$_PasswordChanged> get copyWith =>
      __$$_PasswordChangedCopyWithImpl<_$_PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(
            Name name, EmailAddress emailAddress, Password password)
        registerPressed,
    required TResult Function(EmailAddress emailAddress, Password password)
        signinPressed,
    required TResult Function() signOutPressed,
    required TResult Function(String newPassword) changePassword,
  }) {
    return passwordChanged(passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(Name name, EmailAddress emailAddress, Password password)?
        registerPressed,
    TResult? Function(EmailAddress emailAddress, Password password)?
        signinPressed,
    TResult? Function()? signOutPressed,
    TResult? Function(String newPassword)? changePassword,
  }) {
    return passwordChanged?.call(passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(Name name, EmailAddress emailAddress, Password password)?
        registerPressed,
    TResult Function(EmailAddress emailAddress, Password password)?
        signinPressed,
    TResult Function()? signOutPressed,
    TResult Function(String newPassword)? changePassword,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(passwordStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(Register value) registerPressed,
    required TResult Function(Signin value) signinPressed,
    required TResult Function(SignOut value) signOutPressed,
    required TResult Function(CheckAuth value) changePassword,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(Register value)? registerPressed,
    TResult? Function(Signin value)? signinPressed,
    TResult? Function(SignOut value)? signOutPressed,
    TResult? Function(CheckAuth value)? changePassword,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(Register value)? registerPressed,
    TResult Function(Signin value)? signinPressed,
    TResult Function(SignOut value)? signOutPressed,
    TResult Function(CheckAuth value)? changePassword,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class _PasswordChanged implements SignInFormEvent {
  const factory _PasswordChanged(final String passwordStr) = _$_PasswordChanged;

  String get passwordStr;
  @JsonKey(ignore: true)
  _$$_PasswordChangedCopyWith<_$_PasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NameChangedCopyWith<$Res> {
  factory _$$_NameChangedCopyWith(
          _$_NameChanged value, $Res Function(_$_NameChanged) then) =
      __$$_NameChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String nameStr});
}

/// @nodoc
class __$$_NameChangedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res, _$_NameChanged>
    implements _$$_NameChangedCopyWith<$Res> {
  __$$_NameChangedCopyWithImpl(
      _$_NameChanged _value, $Res Function(_$_NameChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nameStr = null,
  }) {
    return _then(_$_NameChanged(
      null == nameStr
          ? _value.nameStr
          : nameStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NameChanged implements _NameChanged {
  const _$_NameChanged(this.nameStr);

  @override
  final String nameStr;

  @override
  String toString() {
    return 'SignInFormEvent.nameChanged(nameStr: $nameStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NameChanged &&
            (identical(other.nameStr, nameStr) || other.nameStr == nameStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, nameStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NameChangedCopyWith<_$_NameChanged> get copyWith =>
      __$$_NameChangedCopyWithImpl<_$_NameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(
            Name name, EmailAddress emailAddress, Password password)
        registerPressed,
    required TResult Function(EmailAddress emailAddress, Password password)
        signinPressed,
    required TResult Function() signOutPressed,
    required TResult Function(String newPassword) changePassword,
  }) {
    return nameChanged(nameStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(Name name, EmailAddress emailAddress, Password password)?
        registerPressed,
    TResult? Function(EmailAddress emailAddress, Password password)?
        signinPressed,
    TResult? Function()? signOutPressed,
    TResult? Function(String newPassword)? changePassword,
  }) {
    return nameChanged?.call(nameStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(Name name, EmailAddress emailAddress, Password password)?
        registerPressed,
    TResult Function(EmailAddress emailAddress, Password password)?
        signinPressed,
    TResult Function()? signOutPressed,
    TResult Function(String newPassword)? changePassword,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(nameStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(Register value) registerPressed,
    required TResult Function(Signin value) signinPressed,
    required TResult Function(SignOut value) signOutPressed,
    required TResult Function(CheckAuth value) changePassword,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(Register value)? registerPressed,
    TResult? Function(Signin value)? signinPressed,
    TResult? Function(SignOut value)? signOutPressed,
    TResult? Function(CheckAuth value)? changePassword,
  }) {
    return nameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(Register value)? registerPressed,
    TResult Function(Signin value)? signinPressed,
    TResult Function(SignOut value)? signOutPressed,
    TResult Function(CheckAuth value)? changePassword,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class _NameChanged implements SignInFormEvent {
  const factory _NameChanged(final String nameStr) = _$_NameChanged;

  String get nameStr;
  @JsonKey(ignore: true)
  _$$_NameChangedCopyWith<_$_NameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterCopyWith<$Res> {
  factory _$$RegisterCopyWith(
          _$Register value, $Res Function(_$Register) then) =
      __$$RegisterCopyWithImpl<$Res>;
  @useResult
  $Res call({Name name, EmailAddress emailAddress, Password password});
}

/// @nodoc
class __$$RegisterCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res, _$Register>
    implements _$$RegisterCopyWith<$Res> {
  __$$RegisterCopyWithImpl(_$Register _value, $Res Function(_$Register) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? emailAddress = null,
    Object? password = null,
  }) {
    return _then(_$Register(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
    ));
  }
}

/// @nodoc

class _$Register implements Register {
  const _$Register(this.name, this.emailAddress, this.password);

  @override
  final Name name;
  @override
  final EmailAddress emailAddress;
  @override
  final Password password;

  @override
  String toString() {
    return 'SignInFormEvent.registerPressed(name: $name, emailAddress: $emailAddress, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Register &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, emailAddress, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterCopyWith<_$Register> get copyWith =>
      __$$RegisterCopyWithImpl<_$Register>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(
            Name name, EmailAddress emailAddress, Password password)
        registerPressed,
    required TResult Function(EmailAddress emailAddress, Password password)
        signinPressed,
    required TResult Function() signOutPressed,
    required TResult Function(String newPassword) changePassword,
  }) {
    return registerPressed(name, emailAddress, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(Name name, EmailAddress emailAddress, Password password)?
        registerPressed,
    TResult? Function(EmailAddress emailAddress, Password password)?
        signinPressed,
    TResult? Function()? signOutPressed,
    TResult? Function(String newPassword)? changePassword,
  }) {
    return registerPressed?.call(name, emailAddress, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(Name name, EmailAddress emailAddress, Password password)?
        registerPressed,
    TResult Function(EmailAddress emailAddress, Password password)?
        signinPressed,
    TResult Function()? signOutPressed,
    TResult Function(String newPassword)? changePassword,
    required TResult orElse(),
  }) {
    if (registerPressed != null) {
      return registerPressed(name, emailAddress, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(Register value) registerPressed,
    required TResult Function(Signin value) signinPressed,
    required TResult Function(SignOut value) signOutPressed,
    required TResult Function(CheckAuth value) changePassword,
  }) {
    return registerPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(Register value)? registerPressed,
    TResult? Function(Signin value)? signinPressed,
    TResult? Function(SignOut value)? signOutPressed,
    TResult? Function(CheckAuth value)? changePassword,
  }) {
    return registerPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(Register value)? registerPressed,
    TResult Function(Signin value)? signinPressed,
    TResult Function(SignOut value)? signOutPressed,
    TResult Function(CheckAuth value)? changePassword,
    required TResult orElse(),
  }) {
    if (registerPressed != null) {
      return registerPressed(this);
    }
    return orElse();
  }
}

abstract class Register implements SignInFormEvent {
  const factory Register(final Name name, final EmailAddress emailAddress,
      final Password password) = _$Register;

  Name get name;
  EmailAddress get emailAddress;
  Password get password;
  @JsonKey(ignore: true)
  _$$RegisterCopyWith<_$Register> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SigninCopyWith<$Res> {
  factory _$$SigninCopyWith(_$Signin value, $Res Function(_$Signin) then) =
      __$$SigninCopyWithImpl<$Res>;
  @useResult
  $Res call({EmailAddress emailAddress, Password password});
}

/// @nodoc
class __$$SigninCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res, _$Signin>
    implements _$$SigninCopyWith<$Res> {
  __$$SigninCopyWithImpl(_$Signin _value, $Res Function(_$Signin) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailAddress = null,
    Object? password = null,
  }) {
    return _then(_$Signin(
      null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
    ));
  }
}

/// @nodoc

class _$Signin implements Signin {
  const _$Signin(this.emailAddress, this.password);

  @override
  final EmailAddress emailAddress;
  @override
  final Password password;

  @override
  String toString() {
    return 'SignInFormEvent.signinPressed(emailAddress: $emailAddress, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Signin &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, emailAddress, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SigninCopyWith<_$Signin> get copyWith =>
      __$$SigninCopyWithImpl<_$Signin>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(
            Name name, EmailAddress emailAddress, Password password)
        registerPressed,
    required TResult Function(EmailAddress emailAddress, Password password)
        signinPressed,
    required TResult Function() signOutPressed,
    required TResult Function(String newPassword) changePassword,
  }) {
    return signinPressed(emailAddress, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(Name name, EmailAddress emailAddress, Password password)?
        registerPressed,
    TResult? Function(EmailAddress emailAddress, Password password)?
        signinPressed,
    TResult? Function()? signOutPressed,
    TResult? Function(String newPassword)? changePassword,
  }) {
    return signinPressed?.call(emailAddress, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(Name name, EmailAddress emailAddress, Password password)?
        registerPressed,
    TResult Function(EmailAddress emailAddress, Password password)?
        signinPressed,
    TResult Function()? signOutPressed,
    TResult Function(String newPassword)? changePassword,
    required TResult orElse(),
  }) {
    if (signinPressed != null) {
      return signinPressed(emailAddress, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(Register value) registerPressed,
    required TResult Function(Signin value) signinPressed,
    required TResult Function(SignOut value) signOutPressed,
    required TResult Function(CheckAuth value) changePassword,
  }) {
    return signinPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(Register value)? registerPressed,
    TResult? Function(Signin value)? signinPressed,
    TResult? Function(SignOut value)? signOutPressed,
    TResult? Function(CheckAuth value)? changePassword,
  }) {
    return signinPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(Register value)? registerPressed,
    TResult Function(Signin value)? signinPressed,
    TResult Function(SignOut value)? signOutPressed,
    TResult Function(CheckAuth value)? changePassword,
    required TResult orElse(),
  }) {
    if (signinPressed != null) {
      return signinPressed(this);
    }
    return orElse();
  }
}

abstract class Signin implements SignInFormEvent {
  const factory Signin(
      final EmailAddress emailAddress, final Password password) = _$Signin;

  EmailAddress get emailAddress;
  Password get password;
  @JsonKey(ignore: true)
  _$$SigninCopyWith<_$Signin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignOutCopyWith<$Res> {
  factory _$$SignOutCopyWith(_$SignOut value, $Res Function(_$SignOut) then) =
      __$$SignOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignOutCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res, _$SignOut>
    implements _$$SignOutCopyWith<$Res> {
  __$$SignOutCopyWithImpl(_$SignOut _value, $Res Function(_$SignOut) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignOut implements SignOut {
  const _$SignOut();

  @override
  String toString() {
    return 'SignInFormEvent.signOutPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(
            Name name, EmailAddress emailAddress, Password password)
        registerPressed,
    required TResult Function(EmailAddress emailAddress, Password password)
        signinPressed,
    required TResult Function() signOutPressed,
    required TResult Function(String newPassword) changePassword,
  }) {
    return signOutPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(Name name, EmailAddress emailAddress, Password password)?
        registerPressed,
    TResult? Function(EmailAddress emailAddress, Password password)?
        signinPressed,
    TResult? Function()? signOutPressed,
    TResult? Function(String newPassword)? changePassword,
  }) {
    return signOutPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(Name name, EmailAddress emailAddress, Password password)?
        registerPressed,
    TResult Function(EmailAddress emailAddress, Password password)?
        signinPressed,
    TResult Function()? signOutPressed,
    TResult Function(String newPassword)? changePassword,
    required TResult orElse(),
  }) {
    if (signOutPressed != null) {
      return signOutPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(Register value) registerPressed,
    required TResult Function(Signin value) signinPressed,
    required TResult Function(SignOut value) signOutPressed,
    required TResult Function(CheckAuth value) changePassword,
  }) {
    return signOutPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(Register value)? registerPressed,
    TResult? Function(Signin value)? signinPressed,
    TResult? Function(SignOut value)? signOutPressed,
    TResult? Function(CheckAuth value)? changePassword,
  }) {
    return signOutPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(Register value)? registerPressed,
    TResult Function(Signin value)? signinPressed,
    TResult Function(SignOut value)? signOutPressed,
    TResult Function(CheckAuth value)? changePassword,
    required TResult orElse(),
  }) {
    if (signOutPressed != null) {
      return signOutPressed(this);
    }
    return orElse();
  }
}

abstract class SignOut implements SignInFormEvent {
  const factory SignOut() = _$SignOut;
}

/// @nodoc
abstract class _$$CheckAuthCopyWith<$Res> {
  factory _$$CheckAuthCopyWith(
          _$CheckAuth value, $Res Function(_$CheckAuth) then) =
      __$$CheckAuthCopyWithImpl<$Res>;
  @useResult
  $Res call({String newPassword});
}

/// @nodoc
class __$$CheckAuthCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res, _$CheckAuth>
    implements _$$CheckAuthCopyWith<$Res> {
  __$$CheckAuthCopyWithImpl(
      _$CheckAuth _value, $Res Function(_$CheckAuth) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newPassword = null,
  }) {
    return _then(_$CheckAuth(
      null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CheckAuth implements CheckAuth {
  const _$CheckAuth(this.newPassword);

  @override
  final String newPassword;

  @override
  String toString() {
    return 'SignInFormEvent.changePassword(newPassword: $newPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckAuth &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckAuthCopyWith<_$CheckAuth> get copyWith =>
      __$$CheckAuthCopyWithImpl<_$CheckAuth>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(
            Name name, EmailAddress emailAddress, Password password)
        registerPressed,
    required TResult Function(EmailAddress emailAddress, Password password)
        signinPressed,
    required TResult Function() signOutPressed,
    required TResult Function(String newPassword) changePassword,
  }) {
    return changePassword(newPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(Name name, EmailAddress emailAddress, Password password)?
        registerPressed,
    TResult? Function(EmailAddress emailAddress, Password password)?
        signinPressed,
    TResult? Function()? signOutPressed,
    TResult? Function(String newPassword)? changePassword,
  }) {
    return changePassword?.call(newPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(Name name, EmailAddress emailAddress, Password password)?
        registerPressed,
    TResult Function(EmailAddress emailAddress, Password password)?
        signinPressed,
    TResult Function()? signOutPressed,
    TResult Function(String newPassword)? changePassword,
    required TResult orElse(),
  }) {
    if (changePassword != null) {
      return changePassword(newPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(Register value) registerPressed,
    required TResult Function(Signin value) signinPressed,
    required TResult Function(SignOut value) signOutPressed,
    required TResult Function(CheckAuth value) changePassword,
  }) {
    return changePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(Register value)? registerPressed,
    TResult? Function(Signin value)? signinPressed,
    TResult? Function(SignOut value)? signOutPressed,
    TResult? Function(CheckAuth value)? changePassword,
  }) {
    return changePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(Register value)? registerPressed,
    TResult Function(Signin value)? signinPressed,
    TResult Function(SignOut value)? signOutPressed,
    TResult Function(CheckAuth value)? changePassword,
    required TResult orElse(),
  }) {
    if (changePassword != null) {
      return changePassword(this);
    }
    return orElse();
  }
}

abstract class CheckAuth implements SignInFormEvent {
  const factory CheckAuth(final String newPassword) = _$CheckAuth;

  String get newPassword;
  @JsonKey(ignore: true)
  _$$CheckAuthCopyWith<_$CheckAuth> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SignInFormState {
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  Name get name => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInFormStateCopyWith<SignInFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInFormStateCopyWith<$Res> {
  factory $SignInFormStateCopyWith(
          SignInFormState value, $Res Function(SignInFormState) then) =
      _$SignInFormStateCopyWithImpl<$Res, SignInFormState>;
  @useResult
  $Res call(
      {EmailAddress emailAddress,
      Password password,
      Name name,
      bool isSubmitting,
      bool showErrorMessages,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class _$SignInFormStateCopyWithImpl<$Res, $Val extends SignInFormState>
    implements $SignInFormStateCopyWith<$Res> {
  _$SignInFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailAddress = null,
    Object? password = null,
    Object? name = null,
    Object? isSubmitting = null,
    Object? showErrorMessages = null,
    Object? authFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: null == authFailureOrSuccessOption
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SignInFormStateCopyWith<$Res>
    implements $SignInFormStateCopyWith<$Res> {
  factory _$$_SignInFormStateCopyWith(
          _$_SignInFormState value, $Res Function(_$_SignInFormState) then) =
      __$$_SignInFormStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EmailAddress emailAddress,
      Password password,
      Name name,
      bool isSubmitting,
      bool showErrorMessages,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class __$$_SignInFormStateCopyWithImpl<$Res>
    extends _$SignInFormStateCopyWithImpl<$Res, _$_SignInFormState>
    implements _$$_SignInFormStateCopyWith<$Res> {
  __$$_SignInFormStateCopyWithImpl(
      _$_SignInFormState _value, $Res Function(_$_SignInFormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailAddress = null,
    Object? password = null,
    Object? name = null,
    Object? isSubmitting = null,
    Object? showErrorMessages = null,
    Object? authFailureOrSuccessOption = null,
  }) {
    return _then(_$_SignInFormState(
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: null == authFailureOrSuccessOption
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_SignInFormState implements _SignInFormState {
  const _$_SignInFormState(
      {required this.emailAddress,
      required this.password,
      required this.name,
      required this.isSubmitting,
      required this.showErrorMessages,
      required this.authFailureOrSuccessOption});

  @override
  final EmailAddress emailAddress;
  @override
  final Password password;
  @override
  final Name name;
  @override
  final bool isSubmitting;
  @override
  final bool showErrorMessages;
  @override
  final Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'SignInFormState(emailAddress: $emailAddress, password: $password, name: $name, isSubmitting: $isSubmitting, showErrorMessages: $showErrorMessages, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignInFormState &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages) &&
            (identical(other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption) ||
                other.authFailureOrSuccessOption ==
                    authFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, emailAddress, password, name,
      isSubmitting, showErrorMessages, authFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignInFormStateCopyWith<_$_SignInFormState> get copyWith =>
      __$$_SignInFormStateCopyWithImpl<_$_SignInFormState>(this, _$identity);
}

abstract class _SignInFormState implements SignInFormState {
  const factory _SignInFormState(
      {required final EmailAddress emailAddress,
      required final Password password,
      required final Name name,
      required final bool isSubmitting,
      required final bool showErrorMessages,
      required final Option<Either<AuthFailure, Unit>>
          authFailureOrSuccessOption}) = _$_SignInFormState;

  @override
  EmailAddress get emailAddress;
  @override
  Password get password;
  @override
  Name get name;
  @override
  bool get isSubmitting;
  @override
  bool get showErrorMessages;
  @override
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_SignInFormStateCopyWith<_$_SignInFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
