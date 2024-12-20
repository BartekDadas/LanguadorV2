import 'package:flutter/foundation.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../services/auth_service.dart';
import '../models/user_model.dart';

class AuthProvider with ChangeNotifier {
  final AuthService _authService = AuthService();
  UserModel? _user;
  bool _isLoading = false;
  String? _error;

  UserModel? get user => _user;
  bool get isLoading => _isLoading;
  String? get error => _error;
  bool get isAuthenticated => _user != null;

  AuthProvider() {
    _authService.authStateChanges.listen((User? firebaseUser) async {
      if (firebaseUser == null) {
        _user = null;
      } else {
        try {
          _user = await _authService.getUserData(firebaseUser.uid);
        } catch (e) {
          _error = e.toString();
        }
      }
      notifyListeners();
    });
  }

  Future<bool> signIn(String email, String password) async {
    try {
      _isLoading = true;
      _error = null;
      notifyListeners();

      _user = await _authService.signInWithEmailAndPassword(email, password);
      return true;
    } catch (e) {
      _error = e.toString();
      return false;
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<bool> register(
    String email,
    String password,
    String preferredLanguage,
    List<String> learningLanguages,
  ) async {
    try {
      _isLoading = true;
      _error = null;
      notifyListeners();

      _user = await _authService.registerWithEmailAndPassword(
        email,
        password,
        preferredLanguage,
        learningLanguages,
      );
      return true;
    } catch (e) {
      _error = e.toString();
      return false;
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> signOut() async {
    try {
      await _authService.signOut();
      _user = null;
      _error = null;
    } catch (e) {
      _error = e.toString();
    }
    notifyListeners();
  }

  Future<void> updateLanguagePreferences(
    String preferredLanguage,
    List<String> learningLanguages,
  ) async {
    try {
      if (_user == null) return;
      
      await _authService.updateLanguagePreferences(
        _user!.uid,
        preferredLanguage,
        learningLanguages,
      );

      _user = _user!.copyWith(
        preferredLanguage: preferredLanguage,
        learningLanguages: learningLanguages,
      );
      notifyListeners();
    } catch (e) {
      _error = e.toString();
      notifyListeners();
    }
  }

  void clearError() {
    _error = null;
    notifyListeners();
  }
}
