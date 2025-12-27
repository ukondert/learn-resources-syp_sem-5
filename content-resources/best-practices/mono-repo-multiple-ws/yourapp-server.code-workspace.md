# yourapp-server.code-workspace - Dokumentation

Diese Datei dokumentiert alle Einstellungen und Konfigurationen der `yourapp-server.code-workspace` Datei für die Java/Spring Boot-Entwicklung.

## Ordnerstruktur

Die Workspace-Datei umfasst folgende Ordner:

- **server**: Der Haupt-Server-Anwendungsordner mit Java/Spring Boot Code
- **.github**: GitHub-spezifische Konfigurationen (Actions, Templates)
- **.vscode**: VS Code-spezifische Einstellungen
- **docs**: Projektdokumentation
- **shared-resources**: Geteilte Ressourcen zwischen verschiedenen Projektteilen

## Einstellungen (Settings)

### Dateiausschlüsse

```json
"files.exclude": {
  "../mobile": true,
  "../admin-web": true,
  "../infra": true
}
```

Blendet die Ordner `mobile`, `admin-web` und `infra` aus der Explorer-Ansicht aus, um den Fokus auf server-relevante Dateien zu legen.

### Chat-Modi Konfiguration

```json
"chat.modeFilesLocations": {
  "../.github/chatmodes": true
}
```

Aktiviert Chat-Modi aus dem `.github/chatmodes` Verzeichnis.

### Java-Compiler-Einstellungen

#### Grundkonfiguration

- `java.compile.nullAnalysis.mode`: Automatische Null-Analyse für bessere Code-Sicherheit
- `java.configuration.updateBuildConfiguration`: Interaktive Updates der Build-Konfiguration
- `java.maven.downloadSources`: Lädt automatisch Source-Code für Maven-Dependencies
- `java.saveActions.organizeImports`: Organisiert Imports automatisch beim Speichern

#### Code-Formatierung

- `java.format.settings.url`: Google Java Style Guide als Formatierungsstandard
- `java.format.settings.profile`: "GoogleStyle" Profil aktiviert

### Dateispezifische Editor-Einstellungen

#### Java-Dateien

```json
"[java]": {
  "editor.defaultFormatter": "redhat.java",
  "editor.formatOnSave": true,
  "editor.rulers": [120],
  "editor.tabSize": 2,
  "editor.insertSpaces": true
}
```

- **Formatter**: Red Hat Java Language Support
- **Format on Save**: Automatische Formatierung beim Speichern
- **Ruler**: Bei 120 Zeichen
- **Einrückung**: 2 Leerzeichen

#### XML-Dateien

```json
"[xml]": {
  "editor.formatOnSave": true
}
```

Automatische Formatierung für Maven `pom.xml` und andere XML-Konfigurationsdateien.

#### YAML-Dateien

```json
"[yaml]": {
  "editor.formatOnSave": true
}
```

Formatierung für Spring Boot `application.yml` Konfigurationsdateien.

#### Properties-Dateien

```json
"[properties]": {
  "editor.formatOnSave": true
}
```

Formatierung für Spring Boot `application.properties` Dateien.

## Empfohlene Extensions

### Core Java Development

- **vscjava.vscode-java-pack**: Vollständiges Java-Entwicklungspaket
  - Enthält alle essentiellen Java-Extensions
- **redhat.java**: Java Language Support by Red Hat
  - Basis-Sprachunterstützung, IntelliSense, Debugging
- **vscjava.vscode-maven**: Maven-Integration
  - Maven-Projekte, Dependencies, Build-Lifecycle

### Spring Boot Development

- **vmware.vscode-spring-boot**: Spring Boot Tools
  - Spring Boot-spezifische Features, Live Information
- **vscjava.vscode-spring-initializr**: Spring Initializr Integration
  - Neue Spring Boot-Projekte direkt in VS Code erstellen
- **vscjava.vscode-spring-boot-dashboard**: Spring Boot Dashboard
  - Übersicht und Management von Spring Boot-Anwendungen

### Konfigurationsdateien

- **redhat.vscode-xml**: XML Language Support
  - Syntax-Highlighting, Validierung für Maven POM-Dateien
- **redhat.vscode-yaml**: YAML Language Support
  - Support für Spring Boot YAML-Konfigurationen

### Code-Qualität & Analysis

- **SonarSource.sonarlint-vscode**: SonarLint Code-Analyse
  - Statische Code-Analyse, Security-Vulnerabilities
- **usernamehw.errorlens**: Inline-Fehleranzeige
  - Zeigt Fehler und Warnungen direkt im Editor

### Testing

- **ms-vscode.test-adapter-converter**: Test Adapter Converter
  - Unified Test Interface für verschiedene Test-Frameworks

### Allgemeine Entwicklungstools

- **eamodio.gitlens**: Erweiterte Git-Integration
- **streetsidesoftware.code-spell-checker**: Rechtschreibprüfung

## Tasks

### Maven Build-Lifecycle

#### **maven: clean**

```bash
mvn clean
```

- **Gruppe**: build
- **Zweck**: Löscht alle generierten Build-Artefakte
- **Problem Matcher**: $msCompile

#### **maven: compile** (Default Build Task)

```bash
mvn compile
```

- **Gruppe**: build (Default)
- **Zweck**: Kompiliert den Java-Source-Code
- **Problem Matcher**: $msCompile

#### **maven: package**

```bash
mvn package
```

- **Gruppe**: build
- **Zweck**: Erstellt JAR/WAR-Datei aus kompiliertem Code
- **Problem Matcher**: $msCompile

### Maven Testing

#### **maven: test** (Default Test Task)

```bash
mvn test
```

- **Gruppe**: test (Default)
- **Zweck**: Führt alle Unit-Tests aus
- **Problem Matcher**: $msCompile

#### **maven: verify**

```bash
mvn verify
```

- **Gruppe**: test
- **Zweck**: Führt Integration-Tests und Verifikation aus
- **Problem Matcher**: $msCompile

### Spring Boot Runtime

#### **spring-boot: run**

```bash
mvn spring-boot:run
```

- **Background Task**: Läuft im Hintergrund
- **Problem Matcher**: Custom Pattern für Spring Boot-Startup
- **Monitoring**: Überwacht Tomcat-Start und Application-Bereitschaft

#### **spring-boot: run with profile**

```bash
mvn spring-boot:run -Dspring-boot.run.profiles=${input:profile}
```

- **Interactive Input**: Fragt nach Spring-Profil (Standard: "dev")
- **Background Task**: Läuft im Hintergrund
- **Anwendungsfall**: Development mit verschiedenen Umgebungen

### Dependency Management

#### **maven: dependency tree**

```bash
mvn dependency:tree
```

- **Zweck**: Zeigt Abhängigkeitsbaum des Projekts
- **Hilfreich für**: Dependency-Konflikt-Analyse

## Task-Konfiguration

### Working Directory

Alle Tasks werden im `${workspaceFolder}/server` Verzeichnis ausgeführt.

### Problem Matchers

- **$msCompile**: Standard Microsoft Compile Pattern für Maven-Ausgaben
- **Custom Background Matcher**: Für Spring Boot-Anwendungen
  - Erkennt Tomcat-Start: `^.*Tomcat.*started on port.*$`
  - Erkennt Application-Start: `^.*Started.*Application.*$`

### Input Variables

```json
"inputs": [
  {
    "id": "profile",
    "description": "Spring Profile",
    "default": "dev",
    "type": "promptString"
  }
]
```

Ermöglicht dynamische Eingabe von Spring-Profilen beim Task-Start.

## Verwendung

### Task-Ausführung

1. **Ctrl+Shift+P** → "Tasks: Run Task"
2. **Terminal** → **Run Task...**
3. **Ctrl+Shift+P** → "Tasks: Run Build Task" (führt `maven: compile` aus)
4. **Ctrl+Shift+P** → "Tasks: Run Test Task" (führt `maven: test` aus)

### Empfohlener Entwicklungsworkflow

1. **maven: clean** - Bei Build-Problemen
2. **maven: compile** - Regelmäßige Kompilierung
3. **maven: test** - Vor Commits
4. **spring-boot: run** - Für lokale Entwicklung
5. **maven: package** - Für Deployment-Vorbereitung

### Spring Boot Development

#### Profile-basierte Entwicklung

```bash
# Development Profile
spring-boot: run with profile → "dev"

# Testing Profile  
spring-boot: run with profile → "test"

# Production Profile
spring-boot: run with profile → "prod"
```

#### Hot Swap

Mit Spring Boot DevTools (wenn konfiguriert):

- Automatischer Restart bei Klassenänderungen
- LiveReload für Web-Resources

### Debugging

#### Java Application Debug

1. **Run** → **Start Debugging** (F5)
2. Auswahl: "Java Application"
3. Breakpoints in Java-Code setzen

#### Spring Boot Debug

1. Spring Boot-Anwendung mit Debug-Parametern starten
2. **Run** → **Attach to Process**
3. Remote-Debugging-Konfiguration

## Maven-Integration

### Dependency Management

```xml
<!-- pom.xml Beispiel -->
<dependencies>
    <dependency>
        <groupId>org.springframework.boot</groupId>
        <artifactId>spring-boot-starter-web</artifactId>
    </dependency>
</dependencies>
```

VS Code bietet:

- Auto-Vervollständigung für Dependencies
- Dependency-Update-Benachrichtigungen
- POM-Validierung

### Build-Profile

```xml
<profiles>
    <profile>
        <id>dev</id>
        <properties>
            <spring.profiles.active>dev</spring.profiles.active>
        </properties>
    </profile>
</profiles>
```

## Anpassungen

### Code-Formatierung

Google Java Style Guide ist vorkonfiguriert. Anpassungen über:

```json
"java.format.settings.url": "path/to/custom-style.xml"
```

### Maven-Einstellungen

Maven-spezifische Einstellungen können über VS Code Settings konfiguriert werden:

```json
"maven.executable.path": "/path/to/maven/bin/mvn"
```

### Spring Boot Properties

IntelliSense für `application.properties`:

```properties
# Auto-completion verfügbar
server.port=8080
spring.datasource.url=jdbc:h2:mem:testdb
```

### Lombok-Integration

Für Lombok-Support:

1. Lombok-Extension installieren
2. Annotation Processing aktivieren
3. Build-Path konfigurieren