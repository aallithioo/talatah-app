import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:meta/meta.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  // Firebae Auth
  final FirebaseAuth _firebaeAuth = FirebaseAuth.instance;

  // Facebook Auth
  final FacebookAuth facebookAuth = FacebookAuth.instance;

  // Google Auth
  final GoogleSignIn googleAuth = GoogleSignIn();

  // -------------------- Sign In With Email --------------------
  Future<void> signInWithEmail({
    required String email,
    required String password,
  }) async {
    emit(const AuthSignInWithEmailLoading());
    try {
      User? user = (await _firebaeAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      ))
          .user;
      if (user != null) {
        emit(AuthSignInWithEmailSuccess(user: user));
      }
    } on FirebaseAuthException catch (e) {
      emit(AuthSignInWithEmailFailure(errorMessageSignInWithEmail: e.message!));
    }
  }

  // -------------------- Sign Up With Email --------------------
  Future signUpWithEmail(
    String email,
    String password,
    String name,
  ) async {
    emit(const AuthSignUpWithEmailLoading());
    try {
      User? user = (await _firebaeAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      ))
          .user;
      if (user != null) {
        user.updateDisplayName(name);
        emit(const AuthSignUpWithEmailSuccess());
      }
    } on FirebaseAuthException catch (e) {
      emit(AuthSignUpWithEmailFailure(errorMessageSignUpWithEmail: e.message!));
    }
  }

  // -------------------- Forgot Password -----------------------
  Future forgorPassword(
    String email,
  ) async {
    emit(const AuthForgotPasswordLoading());
    try {
      await _firebaeAuth.sendPasswordResetEmail(email: email);
      emit(const AuthForgotPasswordSuccess());
    } on FirebaseAuthException catch (e) {
      emit(AuthForgotPasswordFailure(errorMessageForgotPassword: e.message!));
    }
  }

  // -------------------- Sign Out ------------------------------
  Future signOut() async {
    await _firebaeAuth.signOut();
    emit(const AuthSignOut());
  }
}
