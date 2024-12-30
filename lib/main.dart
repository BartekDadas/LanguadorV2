import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_app_check/firebase_app_check.dart';
import 'providers/auth_provider.dart';
import 'config/router.dart';
import 'config/dependency_injection.dart';
import 'screens/auth/login_screen.dart';
import "package:flutter_dotenv/flutter_dotenv.dart";

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await FirebaseAppCheck.instance.activate(
    androidProvider: AndroidProvider.debug,
    appleProvider: AppleProvider.debug,
  );
  // Initialize dependencies
  await setupDependencies();
  await dotenv.load(fileName: '.env');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => getIt<AuthProvider>()),
      ],
      child: MaterialApp.router(
        title: 'Languador',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.blue,
            brightness: Brightness.light,
          ),
          useMaterial3: true,
          inputDecorationTheme: const InputDecorationTheme(
            filled: true,
            border: OutlineInputBorder(),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(double.infinity, 48),
            ),
          ),
        ),
        routerConfig: router,
        // home: Consumer<AuthProvider>(
        //   builder: (context, authProvider, _) {
        //     if (authProvider.isAuthenticated) {
        //       // TODO: Return the main game screen once implemented
        //       return Scaffold(
        //         appBar: AppBar(
        //           title: const Text('Languador'),
        //           actions: [
        //             IconButton(
        //               icon: const Icon(Icons.logout),
        //               onPressed: () => authProvider.signOut(),
        //             ),
        //           ],
        //         ),
        //         body: const Center(
        //           child: Text('Welcome to Languador!'),
        //         ),
        //       );
        //     }
        //     return LoginScreen();
        //   },
        // ),
      ),
    );
  }
}
