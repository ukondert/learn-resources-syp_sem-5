# yourapp-web.code-workspace - Dokumentation

Diese Datei dokumentiert alle Einstellungen und Konfigurationen der `yourapp-web.code-workspace` Datei für die Web-Entwicklung mit React/TypeScript.

## Ordnerstruktur

Die Workspace-Datei umfasst folgende Ordner:

- **admin-web**: Der Haupt-Web-Anwendungsordner mit React/TypeScript Code
- **.github**: GitHub-spezifische Konfigurationen (Actions, Templates)
- **.vscode**: VS Code-spezifische Einstellungen
- **docs**: Projektdokumentation
- **shared-resources**: Geteilte Ressourcen zwischen verschiedenen Projektteilen

## Einstellungen (Settings)

### Dateiausschlüsse

```json
"files.exclude": {
  "../mobile": true,
  "../server": true,
  "../infra": true
}
```

Blendet die Ordner `mobile`, `server` und `infra` aus der Explorer-Ansicht aus, um den Fokus auf Web-relevante Dateien zu legen.

### Chat-Modi Konfiguration

```json
"chat.modeFilesLocations": {
  "../.github/chatmodes": true
}
```

Aktiviert Chat-Modi aus dem `.github/chatmodes` Verzeichnis.

### TypeScript/JavaScript Einstellungen

#### Auto-Import Konfiguration

- `typescript.preferences.includePackageJsonAutoImports`: Automatische Imports aus package.json
- `typescript.suggest.autoImports`: Aktiviert Auto-Import-Vorschläge
- `typescript.updateImportsOnFileMove.enabled`: Aktualisiert Imports automatisch beim Verschieben von Dateien
- `javascript.suggest.autoImports`: Auto-Import für JavaScript
- `javascript.updateImportsOnFileMove.enabled`: Import-Updates für JavaScript

### ESLint Konfiguration

- `eslint.workingDirectories`: Definiert `admin-web` als Arbeitsverzeichnis für ESLint
- `eslint.validate`: Validiert JavaScript, JSX, TypeScript und TSX Dateien

### Prettier Konfiguration

- `prettier.requireConfig`: Erfordert eine Prettier-Konfigurationsdatei
- `prettier.useEditorConfig`: Deaktiviert EditorConfig-Integration

### Dateispezifische Editor-Einstellungen

#### JavaScript/TypeScript Dateien

Für alle JS/TS/JSX/TSX Dateien:

- **Formatter**: Prettier (`esbenp.prettier-vscode`)
- **Format on Save**: Aktiviert
- **ESLint Auto-Fix**: Beim Speichern
- **Ruler**: Bei 100 Zeichen
- **Tab Size**: 2 Leerzeichen

#### Andere Dateiformate

- **JSON/JSONC**: Prettier-Formatierung, 2er Tab-Größe
- **CSS/SCSS**: Prettier-Formatierung
- **HTML**: Prettier-Formatierung
- **Markdown**: Prettier-Formatierung

### Emmet Einstellungen

```json
"emmet.includeLanguages": {
  "javascript": "javascriptreact",
  "typescript": "typescriptreact"
}
```

Aktiviert Emmet-Unterstützung für React in JavaScript und TypeScript Dateien.

## Empfohlene Extensions

### Core Web Development

- **ms-vscode.vscode-typescript-next**: Neueste TypeScript-Features und Verbesserungen
- **bradlc.vscode-tailwindcss**: TailwindCSS IntelliSense und Autocomplete
- **esbenp.prettier-vscode**: Code-Formatierung nach Prettier-Regeln
- **dbaeumer.vscode-eslint**: JavaScript/TypeScript Linting und Code-Qualität

### React Development

- **dsznajder.es7-react-js-snippets**: Umfangreiche React Code-Snippets
- **formulahendry.auto-rename-tag**: Automatisches Umbenennen von HTML/JSX Tags
- **christian-kohler.path-intellisense**: Intelligente Pfad-Vervollständigung
- **zignd.html-css-class-completion**: CSS-Klassen-Autocomplete

### Testing & Debugging

- **ms-vscode.vscode-jest**: Jest Test-Framework Integration
- **hbenl.vscode-test-explorer**: Unified Test Explorer Interface
- **ms-vscode.js-debug**: Verbessertes JavaScript/TypeScript Debugging

### Package Management

- **christian-kohler.npm-intellisense**: NPM Package-Namen Autocomplete
- **eg2.vscode-npm-script**: NPM Script-Ausführung und -Verwaltung

### Allgemeine Entwicklungstools

- **usernamehw.errorlens**: Inline-Fehleranzeige im Editor
- **eamodio.gitlens**: Erweiterte Git-Integration und -Visualisierung
- **streetsidesoftware.code-spell-checker**: Rechtschreibprüfung für Code
- **ms-vscode.vscode-json**: Erweiterte JSON-Unterstützung
- **yzhang.markdown-all-in-one**: Vollständige Markdown-Unterstützung
- **redhat.vscode-yaml**: YAML-Sprachunterstützung
- **ms-vscode.live-server**: Live Server für lokale Entwicklung

## Tasks

### Dependency Management

- **npm: install**: Installiert alle NPM-Abhängigkeiten

### Development Server

- **npm: start**: Startet den Development Server (Default Build Task)
  - Läuft im Hintergrund
  - Überwacht Webpack-Kompilierung

### Build Tasks

- **npm: build**: Erstellt Production Build
  - Nutzt TypeScript Problem Matcher
- **npm: preview**: Startet Preview Server für Production Build

### Testing

- **npm: test**: Führt Tests aus (Default Test Task)
- **npm: test with coverage**: Führt Tests mit Coverage-Report aus

### Code Quality

- **npm: lint**: Führt ESLint-Analyse durch
  - Nutzt ESLint Problem Matcher
- **npm: lint fix**: Führt automatische ESLint-Fixes durch
- **npm: format**: Formatiert Code mit Prettier
- **npm: type check**: Führt TypeScript Type-Checking durch

### Analysis

- **npm: analyze bundle**: Analysiert Bundle-Größe und -Zusammensetzung

## Problem Matchers

Die Tasks nutzen verschiedene Problem Matchers für optimale VS Code-Integration:

- **$tsc**: TypeScript Compiler Errors
- **$eslint-stylish**: ESLint Linting Errors
- **Custom Webpack Matcher**: Für Development Server Status

## Verwendung

### Task-Ausführung

1. **Ctrl+Shift+P** → "Tasks: Run Task"
2. **Terminal** → **Run Task...**
3. Für Default Tasks: **Ctrl+Shift+P** → "Tasks: Run Build Task" oder "Tasks: Run Test Task"

### Empfohlener Workflow

1. **npm: install** - Einmalig nach dem Klonen
2. **npm: start** - Für Development
3. **npm: lint** + **npm: test** - Vor Commits
4. **npm: build** - Für Production Deployment

### Extension-Installation

VS Code schlägt automatisch die empfohlenen Extensions vor beim Öffnen des Workspace.

## Anpassungen

### Formatter-Konfiguration

Die Prettier-Konfiguration kann über `.prettierrc` im `admin-web` Ordner angepasst werden.

### ESLint-Regeln

ESLint-Regeln können über `eslint.config.js` im `admin-web` Ordner konfiguriert werden.

### TypeScript-Einstellungen

TypeScript-Compiler-Optionen werden über `tsconfig.json` im `admin-web` Ordner verwaltet.
