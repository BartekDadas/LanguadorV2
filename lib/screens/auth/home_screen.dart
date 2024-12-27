import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:languador/blocs/auth/auth_bloc.dart';
import 'package:languador/blocs/auth/auth_event.dart';
import 'package:languador/blocs/auth/auth_state.dart';
import 'package:languador/blocs/language/language_bloc.dart';
import 'package:languador/blocs/language/language_event.dart';
import 'package:languador/blocs/language/language_state.dart';
import 'login_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    context.read<LanguageBloc>().add(const LanguageEvent.loadLanguages());
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.maybeWhen(
          unauthenticated: () {
            Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (context) => LoginScreen()),
              (route) => false,
            );
          },
          orElse: () {},
        );
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
          actions: [
            IconButton(
              icon: const Icon(Icons.logout),
              onPressed: () {
                context.read<AuthBloc>().add(const AuthEvent.signOut());
              },
            ),
          ],
        ),
        body: BlocBuilder<LanguageBloc, LanguageState>(
          builder: (context, state) {
            return state.maybeWhen(
              loading: () => const Center(child: CircularProgressIndicator()),
              loaded: (languages, knownLanguage, learningLanguage) => Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Welcome!',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Selected Language: ${learningLanguage.name}',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ],
                ),
              ),
              error: (message) => Center(child: Text('Error: $message')),
              orElse: () => const SizedBox.shrink(),
            );
          },
        ),
      ),
    );
  }
}
