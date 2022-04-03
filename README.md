# Kotobaten (Flutter frontend)

![](https://kotobaten.app/static/Desktop-41c963c951b3277fa8ebef877df5922f.png)

Kotobaten is a cross-platform Japanese flashcards app. It is written in Flutter and currently targets Android, Web, and Windows, with macOS and iOS coming soon. The client app is powered by a (not yet open-sourced) ASP .NET Core hosted on Microsoft Azure.

## Developing

After pulling the codebase and [installing Flutter](https://docs.flutter.dev/get-started/install), install the [VS Code extensions](https://docs.flutter.dev/get-started/editor?tab=vscode) for Dart & Flutter. They will automatically make sure that you have packages pulled and provide UI for running the code.

The project makes use of [freezed](https://pub.dev/packages/freezed), so you need to run `flutter pub run build_runner build` whenever you make changes to files that take advantage of freezed.

## Releasing

Releases are fully automated to all supported platforms via GitHub actions and Git tag-based releases. Pushing a new tag in the format `vX.X.X+X` wil kick off GitHub actions that build and push packages to individual platforms' stores.

```bash
git tag v2.0.5+5
git push origin --tags
```

For quick reference, you can delete tags using the below commands.

```bash
git tag -d v2.0.5+5
git push --delete origin v2.0.5+5
```
