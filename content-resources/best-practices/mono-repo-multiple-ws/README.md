# YourApp Monorepo Template

Dieses Repository bietet ein Start-Template für eine typische Full-Stack-Anwendung:

- **Mobile**: Flutter App (`mobile/`)
- **Web Admin**: React + Vite + TypeScript (`admin-web/`)
- **Backend**: Spring Boot (`server/`)
- **CI**: GitHub Actions Workflows für jede Komponente
- **Dev Convenience**: Gemeinsame VS Code Workspaces und zentrale Tasks

## Struktur

```
yourapp/
├─ mobile/
├─ admin-web/
├─ server/
├─ docs/
├─ infra/
├─ .github/workflows/
└─ .vscode/
```

Details siehe `Projektstruktur_Monorepo.md`.

## Voraussetzungen

- Flutter SDK + passende Toolchain (Android/iOS)
- Node.js (>= 20) & npm
- Java 21 (Temurin) & Maven

## Quickstart

### Full Workspace öffnen

```bash
code yourapp-full.code-workspace
```

### Mobile

1. Task ausführen: `mobile: pub get`
2. Starten: `mobile: run (device/simulator)` oder `Run and Debug` → "mobile: Flutter"

### Web

1. Abhängigkeiten installieren (Task): `web: install`
2. Entwicklung starten: Task `web: dev` oder Launch Config "web: Vite dev server"
3. Tests: Task `web: test`

### Server

1. Build + Tests: Task `server: mvn verify`
2. Dev-Runtime: Task `server: run` oder Launch Config "server: Spring Boot (Attach)"
3. Endpoint Test: `curl http://localhost:8080/api/hello`

### Kombi Debug

Compound Launch: "dev: web + server" startet gleichzeitig den Vite Dev Server und die Spring Boot Anwendung.

## CI Workflows

- Mobile: `.github/workflows/mobile.yml`
- Web: `.github/workflows/web.yml`
- Server (inkl. Docker Image Push zu GHCR): `.github/workflows/server.yml`

## Nächste Schritte / Ideen

- Code Owners / PR Templates hinzufügen
- Versionierung / Release Workflow (Semantic Release / Changesets)
- Infrastruktur (Terraform / Pulumi) in `infra/`
- Dokumentation in `docs/`
- Docker Compose Dev-Stack (DB, Caching, etc.)

Viel Erfolg & Happy Coding!
