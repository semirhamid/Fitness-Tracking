part of 'sign_in_form_bloc.dart';

@freezed
class SignInFormEvent with _$SignInFormEvent {
  const factory SignInFormEvent.emailChanged(String emailStr) = _EmailChanged;
  const factory SignInFormEvent.passwordChanged(String passwordStr) =
      _PasswordChanged;
      const factory SignInFormEvent.nameChanged(String nameStr) = _NameChanged;
  const factory SignInFormEvent.registerPressed(Name name, EmailAddress emailAddress, Password password) = Register;
  const factory SignInFormEvent.signinPressed(EmailAddress emailAddress, Password password) = Signin;
  const factory SignInFormEvent.signOutPressed() = SignOut;
  const factory SignInFormEvent.changePassword(String newPassword) = CheckAuth;
}
