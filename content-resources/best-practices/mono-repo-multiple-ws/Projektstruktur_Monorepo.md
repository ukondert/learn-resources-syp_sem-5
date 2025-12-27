# Projektstruktur (Monorepo)

    yourapp/
    ├─ mobile/                  # Flutter-App
    │  ├─ lib/
    │  ├─ test/
    │  └─ pubspec.yaml
    ├─ admin-web/               # Web-Admin (React/Vite)
    │  ├─ src/
    │  ├─ tests/
    │  └─ package.json
    ├─ server/                  # Spring Boot (Maven)
    │  ├─ src/main/java/...
    │  ├─ src/test/java/...
    │  └─ pom.xml
    ├─ docs/
    ├─ infra/
    ├─ .github/
    │  └─ workflows/
    │     ├─ mobile.yml
    │     ├─ web.yml
    │     └─ server.yml
    ├─ .gitignore
    ├─ .vscode/                 # zentrale Tasks/Launch/Empf. Extensions
    │  ├─ tasks.json
    │  ├─ launch.json
    │  ├─ settings.json
    │  └─ extensions.json
    ├─ yourapp-full.code-workspace
    ├─ yourapp-mobile.code-workspace
    ├─ yourapp-web.code-workspace
    └─ yourapp-server.code-workspace

------------------------------------------------------------------------

# 1) VS Code Workspaces

## `yourapp-full.code-workspace`

``` json
{
  "folders": [
    { "path": "." },
    { "path": "mobile" },
    { "path": "admin-web" },
    { "path": "server" }
  ],
  "settings": {
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
  }
}
```

## `yourapp-mobile.code-workspace`

``` json
{
  "folders": [{ "path": "mobile" }],
  "settings": {
    "files.exclude": {
      "../admin-web": true,
      "../server": true,
      "../infra": true,
      "../docs": true
    }
  }
}
```

## `yourapp-web.code-workspace`

``` json
{
  "folders": [{ "path": "admin-web" }],
  "settings": {
    "files.exclude": {
      "../mobile": true,
      "../server": true,
      "../infra": true,
      "../docs": true
    }
  }
}
```

## `yourapp-server.code-workspace`

``` json
{
  "folders": [{ "path": "server" }],
  "settings": {
    "files.exclude": {
      "../mobile": true,
      "../admin-web": true,
      "../infra": true,
      "../docs": true
    }
  }
}
```

**Öffnen:**\
- Full: `code yourapp-full.code-workspace`\
- Mobile: `code yourapp-mobile.code-workspace`\
- Web: `code yourapp-web.code-workspace`\
- Server: `code yourapp-server.code-workspace`

------------------------------------------------------------------------

# 2) Zentrales VS-Code-Setup (`.vscode/`)

## `.vscode/tasks.json`

Globale Tasks mit passendem `cwd`, funktionieren in allen Workspaces.

``` json
{
  "version": "2.0.0",
  "tasks": [
    {
      "label": "mobile: pub get",
      "type": "shell",
      "command": "flutter pub get",
      "options": { "cwd": "${workspaceFolder:yourapp}/mobile" },
      "problemMatcher": []
    },
    {
      "label": "mobile: analyze",
      "type": "shell",
      "command": "flutter analyze",
      "options": { "cwd": "${workspaceFolder:yourapp}/mobile" }
    },
    {
      "label": "mobile: test",
      "type": "shell",
      "command": "flutter test --coverage",
      "options": { "cwd": "${workspaceFolder:yourapp}/mobile" }
    },
    {
      "label": "mobile: run (device/simulator)",
      "type": "shell",
      "command": "flutter run",
      "options": { "cwd": "${workspaceFolder:yourapp}/mobile" }
    },

    {
      "label": "web: install",
      "type": "shell",
      "command": "npm ci",
      "options": { "cwd": "${workspaceFolder:yourapp}/admin-web" }
    },
    {
      "label": "web: lint",
      "type": "shell",
      "command": "npm run lint --if-present",
      "options": { "cwd": "${workspaceFolder:yourapp}/admin-web" }
    },
    {
      "label": "web: test",
      "type": "shell",
      "command": "npm test --if-present -- --ci",
      "options": { "cwd": "${workspaceFolder:yourapp}/admin-web" }
    },
    {
      "label": "web: dev",
      "type": "shell",
      "command": "npm run dev",
      "options": { "cwd": "${workspaceFolder:yourapp}/admin-web" },
      "isBackground": true,
      "problemMatcher": "$tsc-watch"
    },
    {
      "label": "web: build",
      "type": "shell",
      "command": "npm run build",
      "options": { "cwd": "${workspaceFolder:yourapp}/admin-web" }
    },

    {
      "label": "server: mvn verify",
      "type": "shell",
      "command": "mvn -B -DskipTests=false clean verify",
      "options": { "cwd": "${workspaceFolder:yourapp}/server" }
    },
    {
      "label": "server: run",
      "type": "shell",
      "command": "mvn spring-boot:run",
      "options": { "cwd": "${workspaceFolder:yourapp}/server" }
    }
  ]
}
```

## `.vscode/launch.json`

``` json
{
  "version": "0.2.0",
  "configurations": [
    {
      "name": "mobile: Flutter",
      "request": "launch",
      "type": "dart",
      "cwd": "${workspaceFolder:yourapp}/mobile",
      "program": "lib/main.dart"
    },
    {
      "name": "web: Vite dev server",
      "type": "node",
      "request": "launch",
      "cwd": "${workspaceFolder:yourapp}/admin-web",
      "runtimeExecutable": "npm",
      "runtimeArgs": ["run", "dev"]
    },
    {
      "name": "server: Spring Boot (Attach)",
      "type": "java",
      "request": "launch",
      "mainClass": "com.example.Application",
      "projectName": "server",
      "cwd": "${workspaceFolder:yourapp}/server"
    }
  ],
  "compounds": [
    {
      "name": "dev: web + server",
      "configurations": ["web: Vite dev server", "server: Spring Boot (Attach)"]
    }
  ]
}
```

## `.vscode/settings.json`

``` json
{
  "files.exclude": {
    "**/.git": true,
    "**/.DS_Store": true,
    "**/node_modules": true,
    "**/build": true,
    "**/dist": true,
    "**/out": true,
    "**/target": true
  },
  "editor.formatOnSave": true,
  "dart.analysisExcludedFolders": [
    "**/.dart_tool/**",
    "**/build/**"
  ],
  "java.configuration.updateBuildConfiguration": "interactive",
  "eslint.useFlatConfig": true
}
```

## `.vscode/extensions.json`

``` json
{
  "recommendations": [
    "Dart-Code.dart-code",
    "Dart-Code.flutter",
    "redhat.java",
    "vscjava.vscode-java-pack",
    "vmware.vscode-boot-dev-pack",
    "VisualStudioExptTeam.vscodeintellicode",
    "esbenp.prettier-vscode",
    "dbaeumer.vscode-eslint",
    "github.vscode-github-actions",
    "ms-azuretools.vscode-docker"
  ]
}
```

------------------------------------------------------------------------

# 3) GitHub Actions (CI)

## `.github/workflows/mobile.yml`

``` yaml
name: Mobile CI
on:
  push:
    paths: [ "mobile/**" ]
  pull_request:
    paths: [ "mobile/**" ]
jobs:
  test:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: subosito/flutter-action@v2
        with: { flutter-version: 'stable', cache: true }
      - run: flutter --version
      - run: flutter pub get
        working-directory: mobile
      - run: flutter analyze
        working-directory: mobile
      - run: flutter test --coverage
        working-directory: mobile
```

## `.github/workflows/web.yml`

``` yaml
name: Web CI
on:
  push:
    paths: [ "admin-web/**" ]
  pull_request:
    paths: [ "admin-web/**" ]
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: actions/setup-node@v4
        with:
          node-version: '20'
          cache: 'npm'
          cache-dependency-path: 'admin-web/package-lock.json'
      - run: npm ci
        working-directory: admin-web
      - run: npm run lint --if-present
        working-directory: admin-web
      - run: npm test --if-present -- --ci
        working-directory: admin-web
      - run: npm run build
        working-directory: admin-web
```

## `.github/workflows/server.yml`

``` yaml
name: Server CI
on:
  push:
    paths: [ "server/**" ]
  pull_request:
    paths: [ "server/**" ]
jobs:
  build:
    runs-on: ubuntu-latest
    permissions:
      contents: read
      packages: write
    steps:
      - uses: actions/checkout@v4
      - uses: actions/setup-java@v4
        with:
          distribution: 'temurin'
          java-version: '21'
          cache: 'maven'
      - run: mvn -B -DskipTests=false clean verify
        working-directory: server
      - name: Log in to GHCR
        uses: docker/login-action@v3
        with:
          registry: ghcr.io
          username: ${{ github.actor }}
          password: ${{ secrets.GITHUB_TOKEN }}
      - name: Build & Push Image
        uses: docker/build-push-action@v6
        with:
          context: server
          push: true
          tags: ghcr.io/${{ github.repository_owner }}/yourapp-server:sha-${{ github.sha }}
```

------------------------------------------------------------------------

# 4) .gitignore

``` gitignore
# General
.DS_Store
Thumbs.db
*.log
*.swp
*.swo

# VS Code / IntelliJ
.vscode/*
!.vscode/tasks.json
!.vscode/launch.json
!.vscode/settings.json
!.vscode/extensions.json
.idea/
*.iml

# Node / Web
admin-web/node_modules/
admin-web/dist/
admin-web/.vite/
admin-web/.cache/
pnpm-lock.yaml
yarn.lock

# Flutter / Dart
mobile/.dart_tool/
mobile/.packages
mobile/build/
mobile/ios/Pods/
mobile/ios/.symlinks/
mobile/ios/Flutter/Flutter.framework
mobile/ios/Flutter/Flutter.podspec
mobile/android/.gradle/
mobile/android/local.properties
mobile/android/app/key.properties

# Java / Maven
server/target/
server/.mvn/wrapper/maven-wrapper.jar
server/.mvn/wrapper/maven-wrapper.properties

# Docker
**/.env
**/.env.*.local
```

------------------------------------------------------------------------

# 5) Quickstart

-   **Mobile**:\
    Workspace öffnen → `Terminal > Run Task > mobile: pub get` →
    `mobile: run (device/simulator)`\
-   **Web**:\
    Workspace öffnen → `Run and Debug > web: Vite dev server` (oder Task
    `web: dev`)\
-   **Server**:\
    Workspace öffnen → `Run and Debug > server: Spring Boot (Attach)`
    (oder Task `server: run`)\
    \`\`\`
