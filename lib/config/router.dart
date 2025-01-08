import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:languador/screens/game_modes/game_modes_screen.dart';
import '../screens/home/home_screen.dart';
import '../screens/profile/profile_screen.dart';
import '../screens/auth/login_screen.dart';
import '../screens/auth/register_screen.dart';
import '../screens/navigation_screen.dart';
import '../screens/flashcards/flashcard_screen.dart';
import '../services/ai_service.dart';
import '../services/auth_service.dart';
import '../blocs/flashcard/flashcard_bloc.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();
final _getIt = GetIt.instance;

final router = GoRouter(
  refreshListenable: GoRouterRefreshStream(_getIt<AuthService>().authStateChanges),
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/',
  redirect: (context, state) {
    final isAuthRoute = state.matchedLocation == '/login' ||
        state.matchedLocation == '/register';

    final user = _getIt<AuthService>().currentUser;

    if (user == null && !isAuthRoute) {
      return '/login';
    }

    if (user != null && isAuthRoute) {
      return '/';
    }

    return null;
  },
  routes: [
    // Auth routes
    GoRoute(
      path: '/login',
      builder: (context, state) => LoginScreen(),
    ),
    GoRoute(
      path: '/register',
      builder: (context, state) => RegisterScreen(),
    ),
    
    // Main app routes with navigation shell
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return NavigationScreen(navigationShell: navigationShell);
      },
      branches: [
        // Home branch
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/',
              builder: (context, state) => const HomeScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
            routes: [
              GoRoute(
                  path: '/games',
                  builder: (context, state) => const GameModesScreen()
              ),
            ]
        ),
        // Flashcards branch
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/flashcards',
              builder: (context, state) =>  FlashcardScreen(),
            ),
          ],
        ),
        // Profile branch
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/profile',
              builder: (context, state) => const ProfileScreen(),
            ),
          ],
        ),
        // Settings branch
      ],
    ),
  ],

);

class GoRouterRefreshStream extends ChangeNotifier {
  GoRouterRefreshStream(Stream<dynamic> stream) {
    notifyListeners();
    _subscription = stream.asBroadcastStream().listen(
          (dynamic _) => notifyListeners(),
        );
  }

  late final StreamSubscription<dynamic> _subscription;

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}
