# Tic Tac Toe Frontend

Modern, minimalist Tic Tac Toe mobile app built with Flutter.

- Theme: Ocean Professional (Primary #2563EB, Amber accents #F59E0B, Error #EF4444)
- Layout: Centered 3x3 board; player info above/below; scores and controls at bottom
- Modes: Two Player and vs Computer (simple heuristic AI)
- Design: Rounded corners, subtle shadows, gradients, smooth transitions

## Run

- flutter pub get
- flutter run

## Structure

- lib/main.dart: App entry and theme wiring
- lib/theme/app_theme.dart: Ocean Professional ThemeData
- lib/models/game_state.dart: Board state, game rules, AI, scores
- lib/widgets/board.dart: Animated board grid
- lib/widgets/widgets.dart: Reusable UI widgets (mode toggle, chips, scoreboard, background)
- lib/screens/game_screen.dart: Main screen composition
- test/widget_test.dart: Basic widget tests

## Notes

- Code follows Effective Dart and Flutter best practices.
- No environment variables required.
- Ready to run on iOS/Android with Flutter 3.29+ and Dart 3.7+.
