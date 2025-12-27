# yourapp-full.code-workspace - Dokumentation

Diese Datei dokumentiert alle Einstellungen und Konfigurationen der `yourapp-full.code-workspace` Datei für die vollständige Multi-Platform-Entwicklung (Flutter, React/TypeScript, Java/Spring Boot).

## Ordnerstruktur

Die Full-Workspace-Datei umfasst alle Projektteile:

- **.** (Root): Projekt-Root mit gemeinsamen Konfigurationsdateien
- **mobile**: Flutter/Dart-Anwendung für iOS und Android
- **admin-web**: React/TypeScript Web-Anwendung
- **server**: Java/Spring Boot Backend-Server

## Konzept

### Multi-Platform Monorepo

Der Full-Workspace ermöglicht die gleichzeitige Entwicklung aller Projektkomponenten:

- **Frontend**: React Web-App für Administration
- **Mobile**: Flutter-App für End-User
- **Backend**: Spring Boot REST API
- **Shared**: Gemeinsame Ressourcen und Dokumentation

### Unified Development Experience

Vorteile des Full-Workspace:

- **Cross-Platform Debugging**: Gleichzeitiges Debugging von Frontend, Mobile und Backend
- **Shared Dependencies**: Gemeinsame Entwicklungstools und Konfigurationen
- **Integrated Testing**: End-to-End Tests über alle Plattformen
- **Synchronized Development**: Koordinierte Feature-Entwicklung

## Einstellungen (Settings)

### Dateiausschlüsse

```json
"files.exclude": {
  "**/.git": true,
  "**/.idea": true,
  "**/.vscode": false,
  "**/node_modules": true,
  "**/build": true,
  "**/dist": true,
  "**/out": true,
  "**/target": true
}
```

#### Versteckte Ordner

- **/.git**: Git-Metadaten (versteckt)
- **/.idea**: IntelliJ IDEA Konfigurationen (versteckt)
- **/node_modules**: NPM Dependencies (versteckt)

#### Build-Artefakte (versteckt)

- **/build**: Flutter/Gradle Build-Ausgaben
- **/dist**: Web-Build Distributionen
- **/out**: Allgemeine Output-Ordner
- **/target**: Maven Build-Ausgaben

#### Sichtbare Konfigurationen

- **/.vscode**: VS Code-Einstellungen (sichtbar für Workspace-Konfiguration)

## Entwicklungsworkflow

### Startup-Reihenfolge

1. **Backend starten**: `server/` - Spring Boot API
2. **Web-Frontend starten**: `admin-web/` - React Development Server
3. **Mobile-App starten**: `mobile/` - Flutter auf Emulator/Gerät

### Typischer Entwicklungstag

#### 1. Projekt-Setup

```bash
# Root-Verzeichnis
git pull origin main

# Backend Dependencies
cd server
mvn clean install

# Web Dependencies  
cd ../admin-web
npm install

# Mobile Dependencies
cd ../mobile
flutter pub get
```

#### 2. Development Server starten

```bash
# Terminal 1: Backend
cd server
mvn spring-boot:run

# Terminal 2: Web
cd admin-web  
npm start

# Terminal 3: Mobile
cd mobile
flutter run
```

#### 3. Feature-Entwicklung

- **API-Änderungen**: `server/` - Neue Endpoints
- **Web-Integration**: `admin-web/` - UI für neue Features  
- **Mobile-Integration**: `mobile/` - Mobile UI für Features

### Cross-Platform Development

#### Shared Data Models

API-Modelle zwischen Plattformen synchron halten:

```java
// server/src/main/java/com/example/model/User.java
public class User {
    private String id;
    private String name;
    // ...
}
```

```typescript
// admin-web/src/types/User.ts
interface User {
  id: string;
  name: string;
  // ...
}
```

```dart
// mobile/lib/models/user.dart
class User {
  final String id;
  final String name;
  // ...
}
```

#### API-Koordination

- **OpenAPI/Swagger**: API-Dokumentation generieren
- **Code-Generation**: TypeScript/Dart Clients aus API-Spec
- **Shared Constants**: API-Endpunkte und Konstanten

## Debugging-Strategien

### Multi-Platform Debugging

#### Backend-API Debug

1. Spring Boot mit Debug-Profil starten
2. **Run** → **Attach to Process** in VS Code
3. Breakpoints in Java-Code setzen

#### Web-Frontend Debug

1. React Dev Server läuft
2. **Run** → **Start Debugging** → "Chrome"
3. Breakpoints in TypeScript-Code

#### Mobile Debug

1. Flutter-App auf Emulator/Gerät
2. **Run** → **Start Debugging** → "Dart & Flutter"
3. Breakpoints in Dart-Code

#### Full-Stack Debug Session

```bash
# Terminal 1: Backend mit Debug
mvn spring-boot:run -Dspring-boot.run.jvmArguments="-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=5005"

# Terminal 2: Web Dev Server
npm start

# Terminal 3: Flutter
flutter run
```

Dann alle drei Debugger gleichzeitig anhängen.

## Testing-Strategien

### Unit Tests

#### Backend Tests

```bash
cd server
mvn test
```

#### Web Tests

```bash
cd admin-web
npm test
```

#### Mobile Tests

```bash
cd mobile
flutter test
```

### Integration Tests

#### API Integration Tests

```bash
cd server
mvn verify -P integration-tests
```

#### E2E Web Tests

```bash
cd admin-web
npm run test:e2e
```

#### Mobile Integration Tests

```bash
cd mobile
flutter integration_test
```

### Cross-Platform Tests

#### API Contract Tests

- **Backend**: API-Contract-Tests mit RestAssured
- **Web**: API-Mock-Tests mit MSW (Mock Service Worker)
- **Mobile**: API-Integration-Tests mit dio_test

## Empfohlene Extensions

### Multi-Platform Development

Da der Full-Workspace alle Technologien umfasst, sind folgende Extension-Kategorien empfohlen:

#### Core Development

- **ms-vscode.vscode-typescript-next**: TypeScript-Unterstützung
- **redhat.java**: Java-Sprachunterstützung
- **Dart-Code.dart-code**: Dart-Sprachunterstützung
- **Dart-Code.flutter**: Flutter-Framework

#### Framework-spezifisch

- **vmware.vscode-spring-boot**: Spring Boot Tools
- **esbenp.prettier-vscode**: Code-Formatierung
- **dbaeumer.vscode-eslint**: JavaScript/TypeScript Linting

#### Allgemeine Tools

- **eamodio.gitlens**: Git-Integration
- **usernamehw.errorlens**: Inline-Fehleranzeige
- **streetsidesoftware.code-spell-checker**: Rechtschreibprüfung

## Tasks & Scripts

### Unified Task Commands

Für den Full-Workspace können alle plattformspezifischen Tasks gleichzeitig verwaltet werden:

#### Build All

```bash
# Backend
cd server && mvn compile

# Web
cd admin-web && npm run build

# Mobile
cd mobile && flutter build apk
```

#### Test All

```bash
# Backend
cd server && mvn test

# Web  
cd admin-web && npm test

# Mobile
cd mobile && flutter test
```

#### Clean All

```bash
# Backend
cd server && mvn clean

# Web
cd admin-web && npm run clean

# Mobile
cd mobile && flutter clean
```

## Herausforderungen & Lösungen

### Performance-Optimierung

#### VS Code Performance

Mit allen Projekten geöffnet kann VS Code langsamer werden:

**Lösungen:**

- Einzelne Workspaces für focused Development
- `files.exclude` Patterns optimieren
- Extensions selektiv aktivieren

#### Memory Management

**Empfohlene VS Code-Einstellungen:**

```json
{
  "typescript.tsc.autoDetect": "off",
  "java.maxConcurrentBuilds": 1,
  "dart.maxLogLineLength": 2000
}
```

### Synchronisation

#### Git-Workflow

```bash
# Feature-Branch für alle Plattformen
git checkout -b feature/user-management

# Commits pro Plattform
git add server/
git commit -m "backend: add user management API"

git add admin-web/
git commit -m "web: add user management UI"

git add mobile/
git commit -m "mobile: add user management screens"
```

#### Dependency Updates

Koordinierte Updates über alle Plattformen:

- Backend: Maven Dependency Updates
- Web: NPM Package Updates  
- Mobile: Flutter Package Updates

## Best Practices

### Code Organization

#### Shared Resources

```
shared-resources/
├── api-contracts/          # OpenAPI Specifications
├── design-tokens/          # Shared Design System
├── documentation/          # Cross-Platform Docs
└── scripts/               # Build & Deployment Scripts
```

#### Naming Conventions

Konsistente Namensgebung über Plattformen:

- **Entities**: User, Product, Order
- **Services**: UserService, ProductService
- **Controllers/Screens**: UserListScreen, ProductDetailScreen

### Development Guidelines

#### Feature Development

1. **API-First**: Backend-API zuerst entwickeln
2. **Contract Testing**: API-Contracts definieren
3. **Parallel Development**: Web und Mobile parallel
4. **Integration Testing**: Cross-Platform Tests

#### Code Reviews

Multi-Platform Pull Requests:

- Backend-Changes reviewen
- Frontend-Changes reviewen  
- Mobile-Changes reviewen
- Integration-Points prüfen

## Deployment

### Build Pipeline

```yaml
```yaml
# .github/workflows/build-all.yml
name: Build All Platforms

on: [push, pull_request]

jobs:
  backend:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - name: Build Backend
        run: cd server && mvn package
        
  web:
    runs-on: ubuntu-latest  
    steps:
      - uses: actions/checkout@v2
      - name: Build Web
        run: cd admin-web && npm ci && npm run build
        
  mobile:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - name: Build Mobile
        run: cd mobile && flutter build apk
```

### Environment Management

#### Configuration per Platform

- **Backend**: `application-{env}.properties`
- **Web**: `.env.{environment}`
- **Mobile**: `--dart-define` Build-Parameter

Diese Full-Workspace-Konfiguration ermöglicht eine effiziente Multi-Platform-Entwicklung mit allen Vorteilen eines koordinierten Monorepo-Ansatzes.