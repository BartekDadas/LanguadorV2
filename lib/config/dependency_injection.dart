import 'package:get_it/get_it.dart';
import 'package:languador/blocs/auth/auth_bloc.dart';
import 'package:languador/blocs/language/language_bloc.dart';
import 'package:languador/providers/auth_provider.dart';
import 'package:languador/services/auth_service.dart';

final getIt = GetIt.instance;

Future<void> setupDependencies() async {
  // Services
  getIt.registerLazySingleton<AuthService>(() => AuthService());

  // Providers
  getIt.registerLazySingleton<AuthProvider>(() => AuthProvider());

  // Blocs
  getIt.registerFactory<AuthBloc>(() => AuthBloc());
  getIt.registerFactory<LanguageBloc>(() => LanguageBloc());
}
