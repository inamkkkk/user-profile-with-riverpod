# User Profile App with Riverpod

A Flutter application showcasing user profile data fetched from an API using Riverpod for state management.

## Features

- Fetches user data from a dummy API.
- Displays user profile information (name, email, phone, website).
- Uses Riverpod for state management to handle data fetching and display.
- Simple UI with error handling and loading state.

## Folder Structure


lib/
├── main.dart
├── models/
│   └── user.dart
├── screens/
│   └── profile_screen.dart
└── services/
    └── api_service.dart


## Getting Started

1.  Clone the repository.
2.  Run `flutter pub get` to install dependencies.
3.  Run `flutter run` to launch the application.

## Dependencies

-   flutter_riverpod: ^2.0.0
-   http: ^0.13.0
