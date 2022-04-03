# Kotobaten Flutter App

## Developing

### Freezed

Run the generator with `flutter pub run build_runner build`.

## Release

Tag-based releases. Example:

```bash
git tag v2.0.5+5
git push origin --tags
```

Deleting tags:

```bash
git tag -d v2.0.5+5
git push --delete origin v2.0.5+5
```

### Windows

Manual process described [here](https://blog.codemagic.io/publishing-flutter-windows-apps/)

`flutter pub run msix:create`