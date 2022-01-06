part of 'auth_cubit.dart';

@immutable
abstract class AuthState extends Equatable {
  final User? user;
  final String? errorMessage;
  const AuthState({
    this.user,
    this.errorMessage,
  });

  @override
  List<Object> get props => [user!, errorMessage!];
}

// Initial state
class AuthInitial extends AuthState {}

// -------------------- Sign In With Email --------------------
// Sign in with email state  ~ (Loading)
class AuthSignInWithEmailLoading extends AuthState {
  const AuthSignInWithEmailLoading();
}

// Sign in with email state  ~ (Success)
class AuthSignInWithEmailSuccess extends AuthState {
  const AuthSignInWithEmailSuccess({required User user}) : super(user: user);
}

// Sign in with email state  ~ (Failure)
class AuthSignInWithEmailFailure extends AuthState {
  const AuthSignInWithEmailFailure(
      {required String errorMessageSignInWithEmail})
      : super(errorMessage: errorMessageSignInWithEmail);
}

// -------------------- Sign Up With Email --------------------
// Sign up with email state  ~ (Loading)
class AuthSignUpWithEmailLoading extends AuthState {
  const AuthSignUpWithEmailLoading();
}

// Sign up with email state  ~ (Success)
class AuthSignUpWithEmailSuccess extends AuthState {
  const AuthSignUpWithEmailSuccess();
}

// Sign up with email state  ~ (Failure)
class AuthSignUpWithEmailFailure extends AuthState {
  final String? errorMessageSignUpWithEmail;
  const AuthSignUpWithEmailFailure({this.errorMessageSignUpWithEmail});

  // Comparing objects
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is AuthSignUpWithEmailFailure &&
            errorMessageSignUpWithEmail == other.errorMessageSignUpWithEmail;
  }

  // Hashing objects
  @override
  int get hashCode => errorMessageSignUpWithEmail.hashCode;
}

// -------------------- Forgot Password -----------------------
// Forgot password state  ~ (Loading)
class AuthForgotPasswordLoading extends AuthState {
  const AuthForgotPasswordLoading();
}

// Forgot password state  ~ (Success)
class AuthForgotPasswordSuccess extends AuthState {
  const AuthForgotPasswordSuccess();
}

// Forgot password state  ~ (Failure)
class AuthForgotPasswordFailure extends AuthState {
  final String? errorMessageForgotPassword;
  const AuthForgotPasswordFailure({this.errorMessageForgotPassword});

  // Comparing objects
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is AuthForgotPasswordFailure &&
            errorMessageForgotPassword == other.errorMessageForgotPassword;
  }

  // Hashing objects
  @override
  int get hashCode => errorMessageForgotPassword.hashCode;
}

// -------------------- Sign In With Google -------------------
// Sign in with google state  ~ (Loading)
class AuthSignInWithGoogleLoading extends AuthState {
  const AuthSignInWithGoogleLoading();
}

// Sign in with google state  ~ (Success)
class AuthSignInWithGoogleSuccess extends AuthState {
  const AuthSignInWithGoogleSuccess({required User user}) : super(user: user);
}

// Sign in with google state  ~ (Failure)
class AuthSignInWithGoogleFailure extends AuthState {
  const AuthSignInWithGoogleFailure(
      {required String errorMessageSignInWithGoogle})
      : super(errorMessage: errorMessageSignInWithGoogle);
}

// -------------------- Sign In With Facebook -----------------
// Sign in with facebook state  ~ (Loading)
class AuthSignInWithFacebookLoading extends AuthState {
  const AuthSignInWithFacebookLoading();
}

// Sign in with facebook state  ~ (Success)
class AuthSignInWithFacebookSuccess extends AuthState {
  const AuthSignInWithFacebookSuccess({required User user}) : super(user: user);
}

// Sign in with facebook state  ~ (Failure)
class AuthSignInWithFacebookFailure extends AuthState {
  const AuthSignInWithFacebookFailure(
      {required String errorMessageSignInWithFacebook})
      : super(errorMessage: errorMessageSignInWithFacebook);
}

// -------------------- Sign Out ------------------------------
class AuthSignOut extends AuthState {
  const AuthSignOut();
}
