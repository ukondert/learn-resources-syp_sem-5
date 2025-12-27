# yourapp-mobile.code-workspace - Dokumentation

Diese Datei dokumentiert alle Einstellungen und Konfigurationen der `yourapp-mobile.code-workspace` Datei für die Flutter/Dart-Entwicklung.

## Ordnerstruktur

Die Workspace-Datei umfasst folgende Ordner:

- **mobile**: Der Haupt-Flutter-Anwendungsordner mit Dart Code
- **.github**: GitHub-spezifische Konfigurationen (Actions, Templates)  
- **.vscode**: VS Code-spezifische Einstellungen
- **docs**: Projektdokumentation
- **shared-resources**: Geteilte Ressourcen zwischen verschiedenen Projektteilen

## Einstellungen (Settings)

### Dateiausschlüsse

```json
"files.exclude": {
  "../admin-web": true,
  "../server": true,
  "../infra": true
}
```

Blendet die Ordner `admin-web`, `server` und `infra` aus der Explorer-Ansicht aus, um den Fokus auf mobile-relevante Dateien zu legen.

### Chat-Modi Konfiguration

```json
"chat.modeFilesLocations": {
  "../.github/chatmodes": true
}
```

Aktiviert Chat-Modi aus dem `.github/chatmodes` Verzeichnis.

### Dart-spezifische Editor-Einstellungen

#### Code-Formatierung

- `editor.formatOnSave`: Automatische Formatierung beim Speichern
- `editor.formatOnType`: Formatierung während der Eingabe  
- `editor.rulers`: Ruler bei 80 Zeichen (Dart Konvention)

#### Code-Vervollständigung

- `editor.selectionHighlight`: Deaktiviert automatische Selektions-Hervorhebung
- `editor.suggestSelection`: Bevorzugt erste Vorschläge
- `editor.tabCompletion`: Nur Snippets für Tab-Vervollständigung
- `editor.wordBasedSuggestions`: Deaktiviert wortbasierte Vorschläge ("off")

### Flutter SDK Konfiguration

```json
"dart.flutterSdkPath": ".fvm/flutter_sdk"
```

Konfiguriert den Flutter SDK-Pfad für Flutter Version Management (FVM).

## Empfohlene Extensions

### Core Flutter/Dart Development

- **Dart-Code.dart-code**: Offizielle Dart-Sprachunterstützung (Syntax-Highlighting, IntelliSense, Debugging)
- **Dart-Code.flutter**: Offizielle Flutter-Framework-Unterstützung (Widget-Inspektor, Hot Reload)

### Flutter-spezifische Tools

- **localizely.flutter-intl**: Internationalisierung (i18n) für Flutter
- **Nash.awesome-flutter-snippets**: Umfangreiche Flutter Code-Snippets

### Allgemeine Entwicklungstools

- **usernamehw.errorlens**: Inline-Fehleranzeige im Editor
- **streetsidesoftware.code-spell-checker**: Rechtschreibprüfung für Code
- **eamodio.gitlens**: Erweiterte Git-Integration

## Tasks

**Hinweis**: Die Tasks wurden aus der Workspace-Datei in eine separate `mobile/.vscode/tasks.json` Datei ausgelagert. Dies ermöglicht eine bessere Wartbarkeit und projektspezifische Konfiguration innerhalb des mobile-Ordners.

### Verfügbare Tasks (in mobile/.vscode/tasks.json)

### Dependency Management

- **flutter: pub get**: Installiert Flutter-Abhängigkeiten (equivalent zu `flutter pub get`)

### Build Tasks

- **flutter: clean**: Bereinigt Build-Artefakte
- **flutter: build runner**: Code-Generierung ausführen

### Development

- **flutter: run**: Startet die Flutter-App (Default Build Task)

### Code Quality & Testing  

- **flutter: analyze**: Statische Code-Analyse (Default Test Task)
- **flutter: test**: Führt Unit- und Widget-Tests aus

## Task-Konfiguration

**Speicherort**: `mobile/.vscode/tasks.json`

Die Tasks sind jetzt in einer separaten `tasks.json` Datei im `mobile/.vscode` Ordner konfiguriert. Dies bietet folgende Vorteile:

- **Projektspezifisch**: Tasks sind direkt im mobile-Projektordner organisiert
- **Bessere Wartbarkeit**: Tasks können unabhängig von der Workspace-Konfiguration verwaltet werden
- **Korrekte Pfade**: Working Directory ist automatisch der mobile-Ordner (`${workspaceFolder}`)
- **Saubere Trennung**: Workspace-Einstellungen konzentrieren sich auf Editor-Konfiguration

### Build-Gruppe

- **flutter: pub get**: Standard Build-Task für Dependencies
- **flutter: clean**: Build-Wartung  
- **flutter: build runner**: Code-Generierung
- **flutter: run**: Standard Build-Task (Default)

### Test-Gruppe

- **flutter: analyze**: Standard Test-Task (Default)
- **flutter: test**: Unit/Widget Testing

### Working Directory

Alle Tasks werden im mobile-Ordner ausgeführt, da die `tasks.json` Datei direkt im `mobile/.vscode/` Verzeichnis liegt und `${workspaceFolder}` automatisch auf den mobile-Ordner verweist.

## Verwendung

### VS Code Profil: Flutter Mobile Dev

Ein optimiertes VS Code Profil für die Flutter-Entwicklung ist verfügbar unter:

- Pfad: `.profiles/Profile_Flutter_Mobile_2025-09-19.code-profile`
- Name: "Flutter Mobile Dev"

Import in VS Code:

1. Öffne die Befehlspalette: Ctrl+Shift+P
2. Wähle: "Profiles: Import Profile..."
3. Wähle "Import from file" und wähle die oben genannte `.code-profile` Datei aus
4. Nach dem Import ggf. als aktives Profil auswählen

Das Profil aktiviert relevante Extensions (Dart, Flutter, Snippets, Error Lens, Spell Checker, GitLens) und setzt sinnvolle Einstellungen für Flutter/Dart (Formatierung, Rulers, Watcher-Excludes, FVM-SDK Pfad).

### Task-Ausführung

1. **Ctrl+Shift+P** → "Tasks: Run Task"
2. **Terminal** → **Run Task...**
3. **Ctrl+Shift+P** → "Tasks: Run Build Task" (führt `flutter: run` aus)
4. **Ctrl+Shift+P** → "Tasks: Run Test Task" (führt `flutter: analyze` aus)

### Empfohlener Entwicklungsworkflow

1. **flutter: pub get** - Nach Änderungen an `pubspec.yaml`
2. **flutter: analyze** - Regelmäßige Code-Qualitätsprüfung
3. **flutter: test** - Vor Commits
4. **flutter: run** - Für Development und Testing
5. **flutter: build runner** - Nach Änderungen an generierten Dateien

### Hot Reload

Während `flutter: run` aktiv ist:

- **r**: Hot Reload
- **R**: Hot Restart  
- **q**: Beenden

### Debugging

- Flutter DevTools werden automatisch gestartet
- Breakpoints können direkt in VS Code gesetzt werden
- Widget Inspector für UI-Debugging verfügbar

## Flutter Version Management (FVM)

### Setup

```bash
# FVM installieren
dart pub global activate fvm

# Flutter Version installieren  
fvm install

# Flutter Version verwenden
fvm use
```

### Workspace-Integration

Die Einstellung `dart.flutterSdkPath: ".fvm/flutter_sdk"` sorgt dafür, dass VS Code die von FVM verwaltete Flutter-Version verwendet.

## Code-Generierung

### Build Runner

Für Packages wie `json_annotation`, `freezed`, oder `riverpod_generator`:

```bash
# Einmalig
flutter pub run build_runner build

# Mit Konfliktauflösung (empfohlen)
flutter pub run build_runner build --delete-conflicting-outputs

# Watch-Modus für kontinuierliche Generierung
flutter pub run build_runner watch
```

## Anpassungen

### Dart-Formatierung

Dart-spezifische Formatierungsregeln können über `analysis_options.yaml` im `mobile/` Ordner konfiguriert werden.

### Flutter SDK-Pfad

Für lokale Flutter-Installationen den `dart.flutterSdkPath` entsprechend anpassen oder entfernen.

### Zusätzliche Linter-Regeln

Erweiterte Linting-Regeln können in der `analysis_options.yaml` aktiviert werden:

```yaml
include: package:flutter_lints/flutter.yaml

linter:
  rules:
    prefer_const_constructors: true
    prefer_const_literals_to_create_immutables: true
```
