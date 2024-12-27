import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:languador/models/language_model.dart';

part 'auth_event.freezed.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.signInWithEmailAndPassword({
    required String email,
    required String password,
  }) = SignInWithEmailAndPassword;

  const factory AuthEvent.signUpWithEmailAndPassword({
    required String email,
    required String password,
    required LanguageModel preferredLanguage,
    required LanguageModel learningLanguage,
  }) = SignUpWithEmailAndPassword;

  const factory AuthEvent.signOut() = SignOut;

  const factory AuthEvent.checkAuthStatus() = CheckAuthStatus;
}
