import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:languador/blocs/auth/auth_bloc.dart';
import 'package:languador/blocs/auth/auth_event.dart';
import 'package:languador/blocs/auth/auth_state.dart';
import 'package:languador/blocs/language/language_bloc.dart';
import 'package:languador/blocs/language/language_event.dart';
import 'package:languador/blocs/language/language_state.dart';
import 'package:languador/models/language_model.dart';
import 'home_screen.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _obscureNotifier = ValueNotifier<bool>(true);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);

    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AuthBloc()),
        BlocProvider(create: (context) => LanguageBloc()..add(const LanguageEvent.loadLanguages())),
      ],
      child: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          state.maybeWhen(
            authenticated: (_) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const HomeScreen()),
              );
            },
            error: (message) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(message),
                  backgroundColor: Colors.red.shade400,
                  behavior: SnackBarBehavior.floating,
                  margin: const EdgeInsets.all(16),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                ),
              );
            },
            orElse: () {},
          );
        },
        builder: (context, state) {
          return Scaffold(
            body: Stack(
              children: [
                // Background gradient with pattern
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        theme.colorScheme.secondary,
                        theme.colorScheme.primary,
                      ],
                    ),
                  ),
                ),
                // Circular patterns for visual interest
                Positioned(
                  top: -size.height * 0.2,
                  left: -size.width * 0.2,
                  child: Container(
                    width: size.width * 0.8,
                    height: size.width * 0.8,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: theme.colorScheme.secondary.withOpacity(0.2),
                    ),
                  ),
                ),
                Positioned(
                  bottom: -size.height * 0.2,
                  right: -size.width * 0.2,
                  child: Container(
                    width: size.width * 0.8,
                    height: size.width * 0.8,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: theme.colorScheme.primary.withOpacity(0.2),
                    ),
                  ),
                ),
                // Main content
                SafeArea(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      children: [
                        SizedBox(height: size.height * 0.04),
                        // Logo and welcome text
                        Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: theme.colorScheme.onPrimary.withOpacity(0.1),
                          ),
                          child: Icon(
                            Icons.language,
                            size: 64,
                            color: theme.colorScheme.onPrimary,
                          ),
                        ),
                        const SizedBox(height: 24),
                        Text(
                          'Create Account',
                          style: theme.textTheme.headlineMedium?.copyWith(
                            color: theme.colorScheme.onPrimary,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Start your language learning journey',
                          style: theme.textTheme.bodyLarge?.copyWith(
                            color: theme.colorScheme.onPrimary.withOpacity(0.8),
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: size.height * 0.04),
                        // Registration form
                        Container(
                          padding: const EdgeInsets.all(24),
                          decoration: BoxDecoration(
                            color: theme.colorScheme.surface,
                            borderRadius: BorderRadius.circular(24),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 20,
                                offset: const Offset(0, 10),
                              ),
                            ],
                          ),
                          child: Form(
                            key: _formKey,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                // Email field
                                TextFormField(
                                  controller: _emailController,
                                  decoration: InputDecoration(
                                    labelText: 'Email',
                                    hintText: 'Enter your email',
                                    prefixIcon: Icon(Icons.email_outlined, color: theme.colorScheme.primary),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(16),
                                      borderSide: BorderSide(color: theme.colorScheme.outline),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(16),
                                      borderSide: BorderSide(color: theme.colorScheme.outline.withOpacity(0.3)),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(16),
                                      borderSide: BorderSide(color: theme.colorScheme.primary, width: 2),
                                    ),
                                    filled: true,
                                    fillColor: theme.colorScheme.surface,
                                  ),
                                  keyboardType: TextInputType.emailAddress,
                                  textInputAction: TextInputAction.next,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter your email';
                                    }
                                    if (!value.contains('@')) {
                                      return 'Please enter a valid email';
                                    }
                                    return null;
                                  },
                                ),
                                const SizedBox(height: 16),
                                // Password field
                                ValueListenableBuilder<bool>(
                                  valueListenable: _obscureNotifier,
                                  builder: (context, obscurePassword, _) {
                                    return TextFormField(
                                      controller: _passwordController,
                                      obscureText: obscurePassword,
                                      decoration: InputDecoration(
                                        labelText: 'Password',
                                        hintText: 'Enter your password',
                                        prefixIcon: Icon(Icons.lock_outline, color: theme.colorScheme.primary),
                                        suffixIcon: IconButton(
                                          icon: Icon(
                                            obscurePassword ? Icons.visibility_outlined : Icons.visibility_off_outlined,
                                            color: theme.colorScheme.primary,
                                          ),
                                          onPressed: () => _obscureNotifier.value = !obscurePassword,
                                        ),
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(16),
                                          borderSide: BorderSide(color: theme.colorScheme.outline),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(16),
                                          borderSide: BorderSide(color: theme.colorScheme.outline.withOpacity(0.3)),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(16),
                                          borderSide: BorderSide(color: theme.colorScheme.primary, width: 2),
                                        ),
                                        filled: true,
                                        fillColor: theme.colorScheme.surface,
                                      ),
                                      textInputAction: TextInputAction.next,
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter your password';
                                        }
                                        if (value.length < 6) {
                                          return 'Password must be at least 6 characters';
                                        }
                                        return null;
                                      },
                                    );
                                  },
                                ),
                                const SizedBox(height: 16),
                                // Language selection
                                BlocBuilder<LanguageBloc, LanguageState>(
                                  builder: (context, state) {
                                    return state.when(
                                      loaded: (languages, knowLanguage, learningLanguage) => Column(
                                        children: [
                                          // Preferred language dropdown
                                          DropdownButtonFormField<LanguageModel>(
                                            value: knowLanguage,
                                            decoration: InputDecoration(
                                              labelText: 'Preferred Language',
                                              hintText: 'Select your native language',
                                              prefixIcon: Icon(Icons.translate, color: theme.colorScheme.primary),
                                              border: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(16),
                                                borderSide: BorderSide(color: theme.colorScheme.outline),
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(16),
                                                borderSide: BorderSide(color: theme.colorScheme.outline.withOpacity(0.3)),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(16),
                                                borderSide: BorderSide(color: theme.colorScheme.primary, width: 2),
                                              ),
                                              filled: true,
                                              fillColor: theme.colorScheme.surface,
                                            ),
                                            items: languages.map((language) {
                                              return DropdownMenuItem(
                                                value: language,
                                                child: Text(language.name),
                                              );
                                            }).toList(),
                                            onChanged: (language) {
                                              if (language != null) {
                                                context.read<LanguageBloc>().add(
                                                  LanguageEvent.selectLanguage(language, isKnow: true),
                                                );
                                              }
                                            },
                                            validator: (value) {
                                              if (value == null) {
                                                return 'Please select your preferred language';
                                              }
                                              return null;
                                            },
                                          ),
                                          const SizedBox(height: 16),
                                          // Learning language dropdown
                                          DropdownButtonFormField<LanguageModel>(
                                            value: learningLanguage,
                                            decoration: InputDecoration(
                                              labelText: 'Learning Language',
                                              hintText: 'Select language to learn',
                                              prefixIcon: Icon(Icons.school, color: theme.colorScheme.primary),
                                              border: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(16),
                                                borderSide: BorderSide(color: theme.colorScheme.outline),
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(16),
                                                borderSide: BorderSide(color: theme.colorScheme.outline.withOpacity(0.3)),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(16),
                                                borderSide: BorderSide(color: theme.colorScheme.primary, width: 2),
                                              ),
                                              filled: true,
                                              fillColor: theme.colorScheme.surface,
                                            ),
                                            items: languages
                                                .where((lang) => lang != knowLanguage)
                                                .map((language) {
                                              return DropdownMenuItem(
                                                value: language,
                                                child: Text(language.name),
                                              );
                                            }).toList(),
                                            onChanged: (language) {
                                              if (language != null) {
                                                context.read<LanguageBloc>().add(
                                                  LanguageEvent.selectLanguage(language, isKnow: false),
                                                );
                                              }
                                            },
                                            validator: (value) {
                                              if (value == null) {
                                                return 'Please select a language to learn';
                                              }
                                              return null;
                                            },
                                          ),
                                        ],
                                      ),
                                      loading: () => const Center(
                                        child: CircularProgressIndicator(),
                                      ),
                                      error: (message) => Center(
                                        child: Text(
                                          'Error loading languages: $message',
                                          style: TextStyle(color: theme.colorScheme.error),
                                        ),
                                      ),
                                      initial: () {
                                        return const Center(
                                          child: CircularProgressIndicator(),
                                        );
                                      },
                                    );
                                  },
                                ),
                                const SizedBox(height: 24),
                                // Register button
                                state.maybeWhen(
                                  loading: () => const Center(child: CircularProgressIndicator()),
                                  orElse: () => BlocBuilder<LanguageBloc, LanguageState>(
                                    builder: (context, languageState) {
                                      return languageState.maybeWhen(
                                        loaded: (languages, knownLanguage, learningLanguage) => ElevatedButton(
                                          onPressed: () {
                                            if (_formKey.currentState?.validate() ?? false) {
                                                context.read<AuthBloc>().add(
                                                  AuthEvent.signUpWithEmailAndPassword(
                                                    email: _emailController.text.trim(),
                                                    password: _passwordController.text,
                                                    preferredLanguage: knownLanguage,
                                                    learningLanguage: learningLanguage,
                                                  ),
                                                );
                                            }
                                          },
                                          style: ElevatedButton.styleFrom(
                                            foregroundColor: theme.colorScheme.onPrimary,
                                            backgroundColor: theme.colorScheme.primary,
                                            padding: const EdgeInsets.symmetric(vertical: 16),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(16),
                                            ),
                                            elevation: 2,
                                          ),
                                          child: const Text(
                                            'Create Account',
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        orElse: () => const SizedBox.shrink(),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 24),
                        // Login link
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          style: TextButton.styleFrom(
                            foregroundColor: theme.colorScheme.onPrimary,
                            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                          ),
                          child: const Text(
                            'Already have an account? Sign In',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        SizedBox(height: size.height * 0.02),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
