import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:languador/models/language_model.dart';
import '../models/user_model.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // Get current user
  User? get currentUser => _auth.currentUser;

  // Stream of auth changes
  Stream<User?> get authStateChanges => _auth.authStateChanges();

  // Sign in with email and password
  Future<UserModel> signInWithEmailAndPassword(String email, String password) async {
    try {
      final UserCredential result = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      if(result.user == null) {
        throw Exception('User not found');
      }

      await _firestore.collection('users').doc(result.user!.uid).update({
        'lastLoginAt': DateTime.now(),
      });

      return getUserData(result.user!.uid);
    } catch (e) {
      throw _handleAuthError(e);
    }
  }

  // Register with email and password
  Future<UserModel> registerWithEmailAndPassword(
    String email,
    String password,
    LanguageModel preferredLanguage,
    List<LanguageModel> learningLanguages,
  ) async {
    try {
      final UserCredential result = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      if(result.user?.uid == null) {
        print('Auth Service: User not found');
      }

      // Create user profile in Firestore
      final UserModel user = UserModel(
        uid: result.user!.uid,
        email: email,
        preferredLanguage: preferredLanguage,
        learningLanguages: learningLanguages,
        createdAt: DateTime.now(),
        lastLoginAt: DateTime.now(),
      );

      await _firestore.collection('users')
          .doc(user.uid).set(user.toMap());
      return user;
    } catch (e) {
      throw _handleAuthError(e);
    }
  }

  // Sign out
  Future<void> signOut() async {
    await _auth.signOut();
  }

  // Get user data from Firestore
  Future<UserModel> getUserData(String uid) async {
    try {
      final doc = await _firestore.collection('users').doc(uid).get();
      if (!doc.exists) {
        throw Exception('User not found');
      }
      return UserModel.fromMap(doc.data()!..['uid'] = uid);
    } catch (e) {
      throw Exception('Failed to get user data: $e');
    }
  }

  // Update user language preferences
  Future<void> updateLanguagePreferences(
    String uid,
    LanguageModel preferredLanguage,
    List<LanguageModel> learningLanguages,
  ) async {
    try {
      await _firestore.collection('users').doc(uid).update({
        'preferredLanguage': preferredLanguage.toString(),
        'learningLanguages': learningLanguages.map((lang) => lang.toString()).toList(),
      });
    } catch (e) {
      throw Exception('Failed to update language preferences: $e');
    }
  }

  // Handle Firebase Auth errors
  String _handleAuthError(dynamic e) {
    if (e is FirebaseAuthException) {
      switch (e.code) {
        case 'user-not-found':
          return 'No user found with this email.';
        case 'wrong-password':
          return 'Wrong password provided.';
        case 'email-already-in-use':
          return 'An account already exists with this email.';
        case 'invalid-email':
          return 'Invalid email address.';
        case 'weak-password':
          return 'The password provided is too weak.';
        default:
          return 'Authentication failed. Please try again.';
      }
    }
    return 'An error occurred. Please try again.';
  }
}
