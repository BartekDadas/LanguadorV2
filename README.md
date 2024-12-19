# Languador - Interactive Language Learning Game

A gamified language learning application built with Flutter and Flame engine that makes learning new languages fun and interactive.

## Features

- Multiple interactive game modes for language learning
- AI-powered personalized content generation
- Real-time multiplayer challenges
- Progress tracking and achievements
- Customizable learning paths

## Project Structure

```
lib/
├── config/         # App configuration, constants, and themes
├── game/           # Game-related components and logic using Flame
├── models/         # Data models and entities
├── providers/      # State management using Provider
├── screens/        # UI screens and pages
├── services/       # API services and Firebase integration
├── utils/          # Utility functions and helpers
└── widgets/        # Reusable UI components

assets/
├── audio/          # Sound effects and background music
├── fonts/          # Custom fonts
└── images/         # Images and graphics
```

## Setup

1. Clone the repository
2. Create a `.env` file based on `.env.example`
3. Configure Firebase:
   - Add `google-services.json` for Android
   - Add `GoogleService-Info.plist` for iOS
4. Run `flutter pub get`
5. Run `flutter run`

## Dependencies

- Flutter Flame for game engine
- Firebase for backend services
- Provider for state management
- Flutter dotenv for environment variables

## Development

- Minimum Flutter SDK: 3.6.0
- Dart SDK: 3.6.0
- Target Platforms: iOS, Android

## License

This project is licensed under the MIT License - see the LICENSE file for details.
