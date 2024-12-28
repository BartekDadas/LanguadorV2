import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart' hide AuthProvider;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:languador/blocs/language/language_event.dart';
import 'package:languador/blocs/language/language_state.dart';

import '../../models/language_model.dart';
import '../../providers/auth_provider.dart';

class LanguageBloc extends Bloc<LanguageEvent, LanguageState> {
  final AuthProvider _auth = AuthProvider();

  LanguageBloc() : super(const LanguageState.initial()) {
    on<LoadLanguages>(_onLoadLanguages);
    on<SelectLanguage>(_onSelectLanguage);
  }

  Future<void> _onLoadLanguages(
    LoadLanguages event,
    Emitter<LanguageState> emit,
  ) async {
    try {
      emit(const LanguageState.loading());

      // final snapshot = await _firestore.collection('languages').get();
      // final languages = snapshot.docs
      //     .map((doc) => Language.fromJson(doc.data()))
      //     .toList();
      const  languages = LanguageModel.supportedLanguages;
      if (languages.isNotEmpty) {
        emit(LanguageState.loaded(
          availableLanguages: languages,
          knownLanguage: languages.first,
          learningLanguage: languages[1],
        ));
      } else {
        emit(const LanguageState.error('No languages available'));
      }
    } catch (e) {
      emit(LanguageState.error(e.toString()));
    }
  }

  Future<void> _onSelectLanguage(
    SelectLanguage event,
    Emitter<LanguageState> emit,
  ) async {
    state.when(
      initial: () => null,
      loading: () => null,
      loaded: (availableLanguages, knownLanguage, learningLanguage) {
        emit(LanguageState.loaded(
          availableLanguages: availableLanguages,
          knownLanguage: event.isKnow ? event.language : knownLanguage,
          learningLanguage: event.isKnow ? learningLanguage : event.language,
        ));
        
        // Save selected language to user preferences in Firestore
        try {
          final userId = FirebaseAuth.instance.currentUser?.uid;
          if (userId != null) {
            _auth.user!.copyWith(
              // 'selectedLanguage': event.language.toJson(),
              learningLanguages: [event.language],
            );
          }
        } catch (e) {
          // Handle error silently as this is not critical
          print('Error saving language preference: ${e.toString()}');
        }
      },
      error: (_) => null,
    );
  }
}
