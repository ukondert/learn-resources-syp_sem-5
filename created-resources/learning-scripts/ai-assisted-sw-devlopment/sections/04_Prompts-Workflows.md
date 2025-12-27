# Custom Prompts & Workflows

Dieses Kapitel behandelt wiederholbare Prompt-Vorlagen für häufige Aufgaben. VS Code verwendet **Custom Prompts**, während Google Antigravity **Workflows** nutzt.

---

## Was sind Custom Prompts / Workflows?

**Definition:** Custom Prompts (VS Code) und Workflows (Antigravity) sind vordefinierte Anweisungsvorlagen für wiederkehrende Aufgaben. Sie ermöglichen schnelles Ausführen von Standardoperationen.

### Unterschied zu Agents

| Custom Agents | Custom Prompts / Workflows |
|---------------|----------------------------|
| Komplexe Rollendefinition | Einfache Aufgabenvorlage |
| Können Tools einbinden | Nur Prompt-Text |
| Handoffs zu anderen Agents | Keine Verkettung |
| Dauerhafte Konfiguration | Einmalige Ausführung |

> :bulb: **Merke:** Prompts/Workflows sind für **einfache, wiederholbare Aufgaben**. Für komplexe Szenarien mit Tool-Nutzung verwende Agents.

---

## VS Code Custom Prompts

### Speicherorte

```
Workspace:     .github/prompts/*.prompt.md
User Profile:  <VS Code Profile-Ordner>/*.prompt.md
```

### Dateiformat

```markdown
---
description: Kurzbeschreibung für Dropdown
mode: agent | ask | edit
---

# Prompt Instructions

Hier stehen die Markdown-Anweisungen für den Prompt.
Variablen können mit ${variable} eingefügt werden.
```

### Header-Eigenschaften

| Eigenschaft | Beschreibung |
|-------------|--------------|
| `description` | Kurzbeschreibung im Prompt-Dropdown |
| `mode` | Ausführungsmodus: `agent` (Standard), `ask`, oder `edit` |

### Modi erklärt

| Modus | Beschreibung | Anwendung |
|-------|--------------|-----------|
| `agent` | Agent mit vollem Tool-Zugriff | Komplexe Aufgaben, Dateierstellung |
| `ask` | Nur Antwort, keine Dateiänderungen | Erklärungen, Recherche |
| `edit` | Inline-Editor für Änderungen | Code-Refactoring, Quick Fixes |

---

### Beispiel: Unit Test Generator

**Datei:** `.github/prompts/generate-tests.prompt.md`

```markdown
---
description: Generiert Unit Tests für die aktuelle Datei
mode: agent
---

# Unit Test Generator

Erstelle umfassende Unit Tests für den aktuellen Code.

## Anforderungen

- Verwende das Arrange-Act-Assert Pattern
- Teste alle öffentlichen Methoden
- Berücksichtige Edge Cases und Fehlerszenarien
- Mocke externe Abhängigkeiten
- Ziel: 80% Code Coverage

## Ausgabeformat

Erstelle eine Testdatei im passenden Test-Ordner mit dem Suffix `_test` oder `.test`.
```

---

### Beispiel: Code Review Prompt

**Datei:** `.github/prompts/code-review.prompt.md`

```markdown
---
description: Führt ein Code Review durch
mode: ask
---

# Code Review

Analysiere den ausgewählten Code und gib konstruktives Feedback:

## Prüfpunkte

1. **Lesbarkeit**: Sind Namen aussagekräftig? Ist der Code verständlich?
2. **SOLID-Prinzipien**: Werden sie eingehalten?
3. **Error Handling**: Sind Fehler korrekt behandelt?
4. **Performance**: Gibt es offensichtliche Optimierungsmöglichkeiten?
5. **Tests**: Ist der Code testbar? Fehlen Tests?

## Ausgabeformat

Gib Feedback als Liste mit Priorität (Kritisch, Wichtig, Optional).
```

---

### Beispiel: Dokumentation Generator

**Datei:** `.github/prompts/generate-docs.prompt.md`

```markdown
---
description: Generiert Dokumentation für Code
mode: edit
---

# Dokumentation Generator

Ergänze fehlende Dokumentation im aktuellen Code:

- Füge JSDoc/Dartdoc/Docstrings hinzu
- Beschreibe Parameter und Rückgabewerte
- Dokumentiere Exceptions/Errors
- Füge Beispiele bei komplexen Funktionen hinzu

Halte die Dokumentation prägnant aber vollständig.
```

---

### Variablen in Prompts

Custom Prompts können Variablen nutzen:

| Variable | Beschreibung |
|----------|--------------|
| `${file}` | Aktueller Dateiname |
| `${selection}` | Ausgewählter Text |
| `${input:Name}` | Benutzereingabe mit Label |
| `${clipboard}` | Inhalt der Zwischenablage |

**Beispiel mit Variablen:**

```markdown
---
description: Erklärt Code in gewählter Sprache
mode: ask
---

Erkläre den folgenden Code auf ${input:Sprache}:

${selection}
```

---

## Antigravity Workflows

Google Antigravity verwendet ein ähnliches Konzept namens **Workflows**.

### Speicherort

```
Workspace: .agent/workflows/*.md
```

### Dateiformat

```markdown
---
description: Workflow-Beschreibung
---

# Workflow Name

Schrittweise Anweisungen für den Workflow.
Kann auf andere Dateien und Ressourcen verweisen.
```

> :bulb: **Hinweis:** Antigravity Workflows werden mit `/workflow-name` in der Chat-Eingabe aufgerufen.

---

### Beispiel: Feature Implementation Workflow

**Datei:** `.agent/workflows/implement-feature.md`

```markdown
---
description: Implementiert ein neues Feature nach Best Practices
---

# Feature Implementation Workflow

## Schritt 1: Analyse

- Analysiere die bestehende Codebase
- Identifiziere betroffene Komponenten
- Prüfe auf ähnliche bestehende Implementierungen

## Schritt 2: Planung

- Erstelle einen Implementation Plan
- Definiere die benötigten Änderungen pro Datei
- Identifiziere potenzielle Risiken

## Schritt 3: Implementierung

- Implementiere die Änderungen schrittweise
- Folge den Projekt-Konventionen
- Schreibe Tests parallel zur Implementierung

## Schritt 4: Verifizierung

- Führe alle Tests aus
- Prüfe auf Lint-Fehler
- Erstelle einen Walkthrough der Änderungen
```

---

### Beispiel: Bug Fix Workflow

**Datei:** `.agent/workflows/fix-bug.md`

```markdown
---
description: Systematisches Debugging und Bugfix
---

# Bug Fix Workflow

## Schritt 1: Reproduktion

- Verstehe den gemeldeten Fehler
- Reproduziere das Problem lokal
- Identifiziere die Fehlerbedingungen

## Schritt 2: Analyse

- Finde die Ursache (Root Cause Analysis)
- Prüfe verwandte Code-Bereiche
- Dokumentiere deine Erkenntnisse

## Schritt 3: Fix

- Implementiere die Korrektur
- Halte die Änderung minimal und fokussiert
- Vermeide Seiteneffekte

## Schritt 4: Test

- Schreibe einen Test, der den Bug reproduziert
- Verifiziere, dass der Test jetzt besteht
- Führe Regression-Tests durch
```

---

### Beispiel: Code Review Workflow

**Datei:** `.agent/workflows/review-code.md`

```markdown
---
description: Systematisches Code Review
---

# Code Review Workflow

## Prüfliste

### 1. Funktionalität
- [ ] Erfüllt der Code die Anforderungen?
- [ ] Sind Edge Cases berücksichtigt?
- [ ] Ist Error Handling vorhanden?

### 2. Code-Qualität
- [ ] Ist der Code lesbar und verständlich?
- [ ] Werden Naming Conventions eingehalten?
- [ ] Gibt es Code-Duplikationen?

### 3. Architektur
- [ ] Passt der Code zur bestehenden Architektur?
- [ ] Werden SOLID-Prinzipien eingehalten?
- [ ] Sind Abhängigkeiten korrekt?

### 4. Tests
- [ ] Sind ausreichend Tests vorhanden?
- [ ] Decken Tests die kritischen Pfade ab?
- [ ] Sind Tests lesbar und wartbar?

## Ausgabe

Erstelle einen Review-Bericht mit:
- Zusammenfassung
- Kritische Issues
- Verbesserungsvorschläge
- Positive Aspekte
```

---

## Turbo-Annotation für automatische Ausführung

Antigravity Workflows unterstützen eine spezielle Annotation für automatische Befehlsausführung:

```markdown
## Schritt 1: Dependencies installieren

// turbo
Führe `npm install` aus.

## Schritt 2: Tests ausführen

// turbo
Führe `npm test` aus.

## Schritt 3: Build erstellen

Führe `npm run build` aus.  // Hier wird nachgefragt (kein turbo)
```

| Annotation | Verhalten |
|------------|-----------|
| `// turbo` | Einzelner Schritt wird automatisch ausgeführt |
| `// turbo-all` | Alle Schritte im Workflow werden automatisch ausgeführt |

> :warning: **Achtung:** Verwende `turbo` nur für sichere, nicht-destruktive Befehle!

---

## Custom Prompts/Workflows erstellen

### In VS Code

1. **Command Palette öffnen** → "Configure Custom Prompts"
2. **"Create new prompt"** auswählen
3. **Speicherort wählen:**
   - Workspace: `.github/prompts/`
   - User Profile: Überall verfügbar
4. **Dateiname eingeben** (z.B. `generate-tests.prompt.md`)
5. **YAML Header mit description und mode ausfüllen**
6. **Prompt-Anweisungen schreiben**

### In Antigravity

1. **Ordner erstellen:** `.agent/workflows/`
2. **Neue Datei anlegen** (z.B. `fix-bug.md`)
3. **YAML Header mit description ausfüllen**
4. **Workflow-Schritte dokumentieren**
5. **Aufrufen mit** `/fix-bug` im Chat

---

## Best Practices

### Prompt-Design

| Do | Don't |
|----|-------|
| Klare, spezifische Anweisungen | Vage, mehrdeutige Beschreibungen |
| Strukturierte Ausgabeformate | Unstrukturierte Freitextausgabe |
| Beispiele für komplexe Aufgaben | Annahmen über Vorwissen |
| Variablen für Flexibilität | Hardcodierte Werte |

### Workflow-Organisation

```
.github/prompts/              # VS Code
├── development/
│   ├── generate-tests.prompt.md
│   └── refactor.prompt.md
├── documentation/
│   ├── generate-docs.prompt.md
│   └── readme-update.prompt.md
└── review/
    ├── code-review.prompt.md
    └── security-review.prompt.md

.agent/workflows/             # Antigravity
├── implement-feature.md
├── fix-bug.md
└── review-code.md
```

> :bulb: **Tipp:** Für die Verwendung von Dokumenten-Templates in Prompts/Workflows siehe [Kapitel 5: Best Practices](./05_Best-Practices.md#51-dokumenten-templates).

---

## Quellen und Referenzen

| Quelle | Beschreibung | Link |
|--------|--------------|------|
| **VS Code Reusable Prompts** | Offizielle Dokumentation | [code.visualstudio.com/.../prompt-crafting](https://code.visualstudio.com/docs/copilot/copilot-customization#_reusable-prompt-files-experimental) |
| **Prompt Engineering Guide** | Best Practices für Prompts | [platform.openai.com/docs](https://platform.openai.com/docs/guides/prompt-engineering) |

---

> :arrow_left: **Zurück zu:** [Kapitel 3: Custom Agents](./03_Custom-Agents.md)
>
> :arrow_right: **Weiter zu:** [Kapitel 5: Best Practices](./05_Best-Practices.md)
