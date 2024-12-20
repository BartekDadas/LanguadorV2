class LanguageModel {
  final String code;
  final String name;
  final String nativeName;
  final String flagEmoji;
  final bool isAvailable;

  const LanguageModel({
    required this.code,
    required this.name,
    required this.nativeName,
    required this.flagEmoji,
    this.isAvailable = true,
  });

  static const List<LanguageModel> supportedLanguages = [
    LanguageModel(
      code: 'en',
      name: 'English',
      nativeName: 'English',
      flagEmoji: '🇬🇧',
    ),
    LanguageModel(
      code: 'es',
      name: 'Spanish',
      nativeName: 'Español',
      flagEmoji: '🇪🇸',
    ),
    LanguageModel(
      code: 'fr',
      name: 'French',
      nativeName: 'Français',
      flagEmoji: '🇫🇷',
    ),
    LanguageModel(
      code: 'de',
      name: 'German',
      nativeName: 'Deutsch',
      flagEmoji: '🇩🇪',
    ),
    LanguageModel(
      code: 'it',
      name: 'Italian',
      nativeName: 'Italiano',
      flagEmoji: '🇮🇹',
    ),
    LanguageModel(
      code: 'pt',
      name: 'Portuguese',
      nativeName: 'Português',
      flagEmoji: '🇵🇹',
    ),
    LanguageModel(
      code: 'ru',
      name: 'Russian',
      nativeName: 'Русский',
      flagEmoji: '🇷🇺',
    ),
    LanguageModel(
      code: 'zh',
      name: 'Chinese',
      nativeName: '中文',
      flagEmoji: '🇨🇳',
    ),
    LanguageModel(
      code: 'ja',
      name: 'Japanese',
      nativeName: '日本語',
      flagEmoji: '🇯🇵',
    ),
    LanguageModel(
      code: 'ko',
      name: 'Korean',
      nativeName: '한국어',
      flagEmoji: '🇰🇷',
    ),
  ];

  static LanguageModel getByCode(String code) {
    return supportedLanguages.firstWhere(
      (lang) => lang.code == code,
      orElse: () => supportedLanguages.first,
    );
  }
}
