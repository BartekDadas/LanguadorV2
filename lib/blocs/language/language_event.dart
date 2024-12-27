import 'package:freezed_annotation/freezed_annotation.dart';
import '../../models/language_model.dart';

part 'language_event.freezed.dart';

@freezed
class LanguageEvent with _$LanguageEvent {
  const factory LanguageEvent.loadLanguages() = LoadLanguages;
  const factory LanguageEvent.selectLanguage(LanguageModel language, {required bool isKnow}) = SelectLanguage;
}
