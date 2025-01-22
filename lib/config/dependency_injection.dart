import 'package:get_it/get_it.dart';
import 'package:http/http.dart';
import 'package:languador/blocs/auth/auth_bloc.dart';
import 'package:languador/blocs/language/language_bloc.dart';
import 'package:languador/blocs/flashcard/flashcard_bloc.dart';
import 'package:languador/blocs/game/game_bloc.dart';
import 'package:languador/models/user_model.dart';
import 'package:languador/providers/auth_provider.dart';
import 'package:languador/services/auth_service.dart';
import 'package:languador/services/ai_service.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

final getIt = GetIt.instance;

Future<void> setupDependencies() async {
  // Services
  getIt.registerLazySingleton<AuthService>(() => AuthService());
  getIt.registerLazySingleton<AIService>(() => AIService());

  // Providers
  getIt.registerLazySingleton<AuthProvider>(() => AuthProvider());

  if(getIt.get<AuthService>().currentUser != null) {
    getIt.registerLazySingletonAsync<UserModel>(() =>
      getIt.get<AuthService>().getUserData(getIt.get<AuthService>().currentUser!.uid)
    );
  }

  // Blocs
  getIt.registerFactory<AuthBloc>(() => AuthBloc());
  getIt.registerFactory<LanguageBloc>(() => LanguageBloc());
  getIt.registerFactory<FlashcardBloc>(
    () => FlashcardBloc(aiService: getIt<AIService>()),
  );
  getIt.registerFactory<GameBloc>(
    () => GameBloc(
      firestore: FirebaseFirestore.instance,
      aiService: getIt<AIService>(),
    ),
  );

  getIt.registerLazySingletonAsync<SharedPreferences>(() => SharedPreferences.getInstance());
}
