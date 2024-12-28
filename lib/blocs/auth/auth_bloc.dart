import 'package:firebase_auth/firebase_auth.dart' hide AuthProvider;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:languador/blocs/auth/auth_event.dart';
import 'package:languador/blocs/auth/auth_state.dart';
import 'package:languador/providers/auth_provider.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthProvider _auth = AuthProvider();

  AuthBloc() : super(const AuthState.initial()) {
    on<CheckAuthStatus>(_onCheckAuthStatus);
    on<SignInWithEmailAndPassword>(_onSignInWithEmailAndPassword);
    on<SignUpWithEmailAndPassword>(_onSignUpWithEmailAndPassword);
    on<SignOut>(_onSignOut);
  }

  Future<void> _onCheckAuthStatus(
    CheckAuthStatus event,
    Emitter<AuthState> emit,
  ) async {
    final user = _auth.user;
    if (user != null) {
      emit(AuthState.authenticated(user));
    } else {
      emit(const AuthState.unauthenticated());
    }
  }

  Future<void> _onSignInWithEmailAndPassword(
    SignInWithEmailAndPassword event,
    Emitter<AuthState> emit,
  ) async {
    try {
      emit(const AuthState.loading());
      final userCredential = await _auth.signIn(event.email, event.password);
      if (userCredential) {
        emit(AuthState.authenticated(_auth.user!));
      } else {
        emit(const AuthState.error('Failed to sign in'));
      }
    } catch (e) {
      emit(AuthState.error(e.toString()));
    }
  }

  Future<void> _onSignUpWithEmailAndPassword(
    SignUpWithEmailAndPassword event,
    Emitter<AuthState> emit,
  ) async {
    try {
      emit(const AuthState.loading());
      final userCredential = await _auth.register(
        event.email,
        event.password,
        event.preferredLanguage,
        [event.learningLanguage],
      );
      print("From Bloc $userCredential");
      if (userCredential) {
        emit(AuthState.authenticated(_auth.user!));
      } else {
        emit(const AuthState.error('Failed to sign up'));
      }
    } catch (e) {
      emit(AuthState.error(e.toString()));
    }
  }

  Future<void> _onSignOut(
    SignOut event,
    Emitter<AuthState> emit,
  ) async {
    try {
      await _auth.signOut();
      emit(const AuthState.unauthenticated());
    } catch (e) {
      emit(AuthState.error(e.toString()));
    }
  }
}
