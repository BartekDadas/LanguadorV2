import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/language_model.dart';

part 'language_state.freezed.dart';

@freezed
class LanguageState with _$LanguageState {
  const factory LanguageState.initial() = _Initial;
  const factory LanguageState.loading() = _Loading;
  const factory LanguageState.loaded({
    required List<LanguageModel> availableLanguages,
    required LanguageModel knownLanguage,
    required LanguageModel learningLanguage,
  }) = _Loaded;
  const factory LanguageState.error(String message) = _Error;
}

