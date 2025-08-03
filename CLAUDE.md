# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Kotobaten is a cross-platform Japanese flashcards Flutter application targeting Android, Web, Windows, macOS, and iOS. The app uses a ASP.NET Core backend API hosted on Microsoft Azure.

## Essential Commands

### Development
- `flutter run` - Run the app in development mode
- `dart run build_runner build` - Generate freezed/json_serializable files (required after modifying models)
- `dart run flutter_launcher_icons:main` - Generate iOS app icons
- `flutter analyze` - Run static analysis
- `flutter test` - Run tests

### Code Generation
Run `dart run build_runner build` after making changes to any files using:
- `@freezed` annotations (models with `.freezed.dart` files)
- `@JsonSerializable()` annotations (models with `.g.dart` files)

### Platform-Specific Builds
- Android: `flutter build apk` or `flutter build appbundle`
- Web: `flutter build web`
- Windows: `flutter build windows`
- iOS: Build through Xcode after running `flutter build ios`

## Architecture Overview

### State Management
- **Riverpod + Hooks**: Primary state management using `hooks_riverpod`
- **Repository Pattern**: All slices follow `Repository<T>` base class in `lib/models/slices/repository.dart`
- **Service Layer**: Business logic in service classes (e.g., `AuthService`, `UserService`)

### Project Structure
- `lib/models/slices/` - Domain models organized by feature (auth, cards, practice, user, etc.)
- `lib/services/` - API client, validation, and platform services
- `lib/views/` - UI components organized as atoms/molecules/organisms/screens/templates
- `lib/consts/` - App constants (colors, fonts, routes, etc.)
- `lib/extensions/` - Dart extension methods

### Key Architectural Patterns
- **Freezed Models**: Immutable data classes with `@freezed` annotation
- **JSON Serialization**: Models use `json_annotation` with `@JsonSerializable()`
- **Auto Route**: Navigation using `auto_route` package with generated routes
- **Provider Pattern**: Dependency injection through Riverpod providers

### API Integration
- `KotobatenApiService` in `lib/services/kotobaten_api.dart` handles all backend communication
- Authentication uses bearer tokens stored via `AuthStorageService`
- API responses deserialized through generated `.fromJson()` methods

### Key Components
- **Practice System**: Handles flashcard sessions with different impression types (KanaGuess, SenseGuess, NewCard, etc.)
- **Card Management**: Word and grammar cards with CRUD operations
- **User System**: Authentication, goals, statistics, and onboarding
- **Search**: Universal search across cards and dictionary

### Testing
- `mockito` for service mocking (see files ending in `.mocks.dart`)
- Mock generation via `@GenerateMocks` annotations

### Platform Considerations
- Windows-specific windowing via `bitsdojo_window`
- Cross-platform notifications using `flutter_local_notifications`
- Web/native cookie handling through `CookiesServiceBase`

### Release Process
Automated releases triggered by Git tags in format `vX.X.X+X`:
- GitHub Actions handle building and deployment
- Supports Web, Android, and Windows store releases
- iOS releases require manual Xcode build