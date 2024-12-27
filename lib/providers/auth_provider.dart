import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:languador/models/language_model.dart';
import '../services/auth_service.dart';
import '../models/user_model.dart';

class AuthProvider with ChangeNotifier {
  final AuthService _authService = AuthService();
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
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
      // 1. Sign in with Firebase
      UserCredential userCredential = await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      // 2. Fetch user data from Firestore (if you store additional user details
      DocumentSnapshot userDoc = await _firestore
        .collection('users')
        .doc(userCredential.user!.uid)
        .get();

      // 3. Convert Firestore data into UserModel
      if (userDoc.exists) {
        // _user = UserModel.fromMap(userDoc.data() as Map<String, dynamic>);
        print("${userDoc.data()} \n${userDoc.data().runtimeType}");
        notifyListeners();
        _user = UserModel.fromMap(userDoc.data() as Map<String, dynamic>);
        return true;
      } else {
        // If your user document doesn’t exist, handle accordingly
        // e.g., throw an exception or return null
        throw Exception("User document does not exist");
      }
      return true;
    } on FirebaseAuthException catch (e) {
      // This will throw a readable FirebaseAuth error
      _error = e.message ?? "Failed to sign in";
      return false;
      // throw Exception();
    } catch (e) {
      // Any other type of error
      throw Exception(e.toString());
    }
    finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<bool> register(
    String email,
    String password,
    LanguageModel preferredLanguage,
    List<LanguageModel> learningLanguages,
  ) async {
    try {
      _isLoading = true;
      _error = null;
      notifyListeners();

      UserCredential userCredential = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      // Create user document in Firestore
      UserModel userModel = UserModel(
        uid: userCredential.user!.uid,
        displayName: userCredential.user!.displayName,
        photoUrl: userCredential.user!.photoURL,
        email: email,
        preferredLanguage: preferredLanguage,
        learningLanguages: learningLanguages,
        createdAt: DateTime.now(),
        lastLoginAt: DateTime.now(),
      );

      await _firestore
          .collection('users')
          .doc(userModel.uid)
          .set(userModel.toMap());

      _user = userModel;
      return true;
    } catch (e) {
      _error = e.toString();
      return false;
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();

  // Fetch user data
  // Future<UserModel?> getUserData(String uid) async {
  //   try {
  //     DocumentSnapshot userDoc = await _firestore.collection('users').doc(uid).get();
  //     if (userDoc.exists) {
  //       return UserModel.fromMap(userDoc.data() as Map<String, dynamic>);
  //     } else {
  //       return null;
  //     }
  //   } catch (e) {
  //     throw Exception(e.toString());
  //   }
  // }

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
    LanguageModel preferredLanguage,
    List<LanguageModel> learningLanguages,
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

      await _firestore.collection('users').doc(_user!.uid).update({
        'preferredLanguage': preferredLanguage,
        'learningLanguages': learningLanguages,
      });

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
