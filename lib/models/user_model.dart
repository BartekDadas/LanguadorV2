import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  final String uid;
  final String email;
  final String? displayName;
  final String? photoUrl;
  final String preferredLanguage;
  final List<String> learningLanguages;
  final int level;
  final int experience;
  final DateTime createdAt;
  final DateTime lastLoginAt;

  UserModel({
    required this.uid,
    required this.email,
    this.displayName,
    this.photoUrl,
    required this.preferredLanguage,
    required this.learningLanguages,
    this.level = 1,
    this.experience = 0,
    required this.createdAt,
    required this.lastLoginAt,
  });

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'displayName': displayName,
      'photoUrl': photoUrl,
      'preferredLanguage': preferredLanguage,
      'learningLanguages': learningLanguages,
      'level': level,
      'experience': experience,
      'createdAt': createdAt,
      'lastLoginAt': lastLoginAt,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      uid: map['uid'] as String,
      email: map['email'] as String,
      displayName: map['displayName'] as String?,
      photoUrl: map['photoUrl'] as String?,
      preferredLanguage: map['preferredLanguage'] as String,
      learningLanguages: List<String>.from(map['learningLanguages']),
      level: map['level'] as int,
      experience: map['experience'] as int,
      createdAt: (map['createdAt'] as Timestamp).toDate(),
      lastLoginAt: (map['lastLoginAt'] as Timestamp).toDate(),
    );
  }

  UserModel copyWith({
    String? uid,
    String? email,
    String? displayName,
    String? photoUrl,
    String? preferredLanguage,
    List<String>? learningLanguages,
    int? level,
    int? experience,
    DateTime? createdAt,
    DateTime? lastLoginAt,
  }) {
    return UserModel(
      uid: uid ?? this.uid,
      email: email ?? this.email,
      displayName: displayName ?? this.displayName,
      photoUrl: photoUrl ?? this.photoUrl,
      preferredLanguage: preferredLanguage ?? this.preferredLanguage,
      learningLanguages: learningLanguages ?? this.learningLanguages,
      level: level ?? this.level,
      experience: experience ?? this.experience,
      createdAt: createdAt ?? this.createdAt,
      lastLoginAt: lastLoginAt ?? this.lastLoginAt,
    );
  }
}
