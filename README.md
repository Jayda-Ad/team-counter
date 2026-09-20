# Team Counter

A Flutter app for tracking scores between two teams. Each team has its own side with a live score display and a +1 button, and the colors change dynamically based on who's winning.

## Features
- **Two-team scoreboard** — Team A on the left, Team B on the right
- **Live scoring** — tap "+1" under each team to increment their score
- **Dynamic colors** — each team's panel changes color based on whether they're winning, losing, or tied
  - 🟢 Green = winning
  - 🔴 Red = losing
  - 🟡 Yellow = tied
- **Reset button** — resets both scores back to 0
- **Clean Material UI** — rounded buttons, centered layout, a divider that also changes color with the score state

## Tech Stack
- Flutter
- Dart
- Material Design widgets

## How It Works
- `Counter` is a `StatefulWidget` that holds two integer scores (`scoreA` and `scoreB`)
- Helper methods (`getTeamColor`, `getDividerColor`) return a color based on which score is higher
- Pressing "+1" calls `setState` to increment the score, which triggers a rebuild and updates the colors instantly
- The "Reset" button in the bottom bar sets both scores back to 0

## How to Run

**Prerequisites:** Flutter SDK installed ([install guide](https://docs.flutter.dev/get-started/install))

1. Clone the repository
2. Install dependencies:
   ```bash
   flutter pub get
3. Run the app:
   ```bash
   flutter run
   
