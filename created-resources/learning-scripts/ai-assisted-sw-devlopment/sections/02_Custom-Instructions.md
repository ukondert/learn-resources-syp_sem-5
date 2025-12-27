# Custom Instructions

## Was sind Custom Instructions?

**Definition:** Custom Instructions sind vordefinierte Anweisungen in Markdown-Dateien, die automatisch an jeden Chat-Request angehängt werden. Sie steuern, wie der KI-Assistent Code generiert und auf Anfragen reagiert.

### Warum Custom Instructions verwenden?

| Problem ohne Instructions | Lösung mit Instructions |
|---------------------------|-------------------------|
| Jedes Mal Coding-Standards erklären | Standards werden automatisch angewendet |
| Inkonsistente Antworten | Einheitlicher Stil im gesamten Projekt |
| Wiederholte Kontext-Eingabe | Einmalige Definition, dauerhafte Wirkung |
| Team-Mitglieder mit unterschiedlichen Prompts | Gemeinsame Standards für alle |

> :bulb: **Merke:** Custom Instructions gelten für **Chat-Interaktionen**, nicht für Inline-Suggestions während des Tippens.

---

## Typen von Instruction-Dateien

VS Code unterstützt drei verschiedene Typen von Instruction-Dateien:

### Übersicht

```
┌─────────────────────────────────────┬────────────────────────────────────┐
│ Datei                               │ Anwendungsbereich                  │
├─────────────────────────────────────┼────────────────────────────────────┤
│ .github/copilot-instructions.md     │ Alle Requests im Workspace         │
│ .instructions.md (mit applyTo)      │ Spezifische Dateitypen/Pfade       │
│ AGENTS.md                           │ Multi-Agent Workspaces             │
└─────────────────────────────────────┴────────────────────────────────────┘
```

### `.github/copilot-instructions.md`

**Eigenschaften:**
- Eine einzelne Datei im Workspace-Root
- Gilt automatisch für **alle** Chat-Requests
- Ideal für projektweite Coding-Standards

**Einrichtung:**

1. Aktivieren Sie die Einstellung `github.copilot.chat.codeGeneration.useInstructionFiles`
2. Erstellen Sie `.github/copilot-instructions.md`
3. Schreiben Sie Ihre Anweisungen in natürlicher Sprache

**Beispiel:**

```markdown
# Projekt-Coding-Standards

## Allgemeine Regeln
- Bevorzuge objektorientierte Programmierung
- Schreibe aussagekräftige Variablennamen

## Error Handling
- Verwende try/catch für async Operationen
- Logge Fehler mit kontextbezogenen Informationen

## Testing
- Schreibe Unit-Tests für alle öffentlichen Funktionen
- Verwende das AAA-Pattern (Arrange, Act, Assert)
```

---

### `.instructions.md` Dateien

**Eigenschaften:**
- Mehrere Dateien möglich
- Bedingte Anwendung via `applyTo` Glob-Pattern
- Speicherbar im Workspace (`.github/instructions/`) oder User Profile

**Dateiformat:**

```yaml
---
description: "Beschreibung der Instructions"
name: "Anzeigename"
applyTo: "**/*.ts"  # Glob-Pattern
---

# Anweisungen hier als Markdown
```

**Speicherorte:**

| Ort | Pfad | Verfügbarkeit |
|-----|------|---------------|
| Workspace | `.github/instructions/*.instructions.md` | Nur dieser Workspace |
| User Profile | VS Code Profile-Ordner | Alle Workspaces |

---

### `AGENTS.md`

**Eigenschaften:**
- Für Workspaces mit mehreren KI-Agents
- Datei im Workspace-Root
- Gilt für alle Chat-Requests

**Aktivierung:**
```json
{
  "chat.useAgentsMdFile": true
}
```

---

## Sprachabhängige Instructions

Mit dem `applyTo` Glob-Pattern können Sie Instructions für spezifische Programmiersprachen definieren:

### Python

**Datei:** `.github/instructions/python.instructions.md`

```yaml
---
applyTo: "**/*.py"
description: "Python Coding Standards"
---

# Python-Projektstandards

## Style Guide
- Befolge PEP 8
- Verwende Type Hints für alle Funktionen
- Docstrings im Google-Format

## Imports
- Gruppiere: Standard Library → Third Party → Local
- Absolute Imports bevorzugen

## Beispiel
```python
def calculate_total(items: list[Item]) -> Decimal:
    """Berechnet die Gesamtsumme aller Items.
    
    Args:
        items: Liste der zu berechnenden Items
        
    Returns:
        Gesamtsumme als Decimal
    """
    return sum(item.price for item in items)
```
```

### TypeScript/React

**Datei:** `.github/instructions/typescript.instructions.md`

```text
---
applyTo: "**/*.ts,**/*.tsx"
description: "TypeScript/React Standards"
---

# TypeScript & React Guidelines

## TypeScript
- Verwende `interface` für Objektstrukturen
- Bevorzuge `const` und `readonly`
- Nutze Optional Chaining (`?.`) und Nullish Coalescing (`??`)

## React
- Funktionale Komponenten mit Hooks
- React.FC für Komponenten mit children
- Komponenten klein und fokussiert halten

## Naming
- PascalCase für Komponenten und Interfaces
- camelCase für Variablen und Funktionen
- UPPER_CASE für Konstanten
```

### Dart/Flutter

**Datei:** `.github/instructions/dart.instructions.md`

```yaml
---
applyTo: "**/*.dart"
description: "Dart/Flutter Conventions"
---

# Dart/Flutter Standards

## Code Style
- Befolge Effective Dart Guidelines
- Verwende `final` wo möglich
- Bevorzuge `const` Konstruktoren

## Flutter Widgets
- Stateless vor Stateful bevorzugen
- Widgets klein und wiederverwendbar halten
- BuildContext nicht in async Lücken verwenden

## Architektur
- Riverpod für State Management
- Clean Architecture Schichten einhalten
```

---

## Verzeichnis-basierte Instructions

Neben Dateitypen können Sie auch Verzeichnisse als Kriterium verwenden:

### Test-Verzeichnis

**Datei:** `.github/instructions/testing.instructions.md`

```yaml
---
applyTo: "tests/**,test/**,*_test.dart,*.test.ts"
description: "Testing Guidelines"
---

# Test-Anweisungen

## Struktur
- Ein Test pro Datei für eine Klasse/Funktion
- Gruppierung mit describe/group
- Sprechende Testnamen

## Pattern
- Arrange: Setup der Testdaten
- Act: Ausführung der zu testenden Funktion
- Assert: Überprüfung des Ergebnisses

## Mocking
- Mocke externe Abhängigkeiten
- Verwende Fakes für komplexe Objekte
- Keine echten API-Calls in Unit Tests
```

### Dokumentation

**Datei:** `.github/instructions/docs.instructions.md`

```yaml
---
applyTo: "docs/**/*.md"
description: "Documentation Guidelines"
---

# Dokumentations-Richtlinien

## Sprache
- Präsens verwenden ("ist" statt "war")
- Aktive Sprache bevorzugen
- Direkte Ansprache ("Sie/Du")

## Format
- Überschriften zur Strukturierung
- Codeblöcke mit Syntax-Highlighting
- Links zu verwandten Ressourcen

## Inhalt
- Klare und präzise Formulierungen
- Praxisbeispiele wo sinnvoll
- Versionierung bei API-Dokumentation
```

### Domain Layer (DDD)

**Datei:** `.github/instructions/domain.instructions.md`

```yaml
---
applyTo: "src/domain/**,lib/domain/**"
description: "Domain-Driven Design Patterns"
---

# Domain Layer Guidelines

## Entities
- Eindeutige Identität über ID
- Geschäftslogik in der Entity
- Keine Framework-Abhängigkeiten

## Value Objects
- Immutabel
- Gleichheit über Werte, nicht Identität
- Validierung im Konstruktor

## Aggregate Roots
- Einziger Einstiegspunkt zu Aggregat
- Invarianten schützen
- Transaktionsgrenzen beachten
```

---

## Referenzen zwischen Instruction-Dateien

Sie können Instruction-Dateien modular aufbauen und aufeinander referenzieren:

**Datei:** `.github/instructions/general.instructions.md`

```yaml
---
applyTo: "**"
description: "General Coding Standards"
---

# Allgemeine Coding-Standards

## Naming Conventions
- PascalCase für Klassen und Interfaces
- camelCase für Variablen und Methoden
- Keine Abkürzungen in Namen
```

**Datei:** `.github/instructions/typescript.instructions.md`

```yaml
---
applyTo: "**/*.ts"
description: "TypeScript specific"
---

Wende die [allgemeinen Coding-Standards](./general.instructions.md) an.

# Zusätzliche TypeScript-Regeln

## Typisierung
- Keine `any` Types
- Explizite Return-Types für öffentliche Funktionen
```

---

## Tool-Referenzen in Instructions

Sie können in Instructions auf verfügbare Tools verweisen:

```markdown
# Code-Analyse Instructions

Wenn du Code analysieren sollst, nutze #tool:search um den 
Codebase-Kontext zu verstehen und #tool:githubRepo für 
Repository-Informationen.
```

**Verfügbare Tools:**
- `#tool:search` – Codebase-Suche
- `#tool:fetch` – URL-Inhalte abrufen
- `#tool:githubRepo` – GitHub Repository Informationen
- `#tool:usages` – Symbol-Verwendungen finden

---

## Best Practices

### Do's ✅

1. **Spezifisch sein:** Konkrete Regeln statt vager Anweisungen
2. **Beispiele geben:** Code-Snippets zeigen gewünschtes Verhalten
3. **Modular aufbauen:** Kleine, fokussierte Instruction-Dateien
4. **Konsistent bleiben:** Einheitliche Terminologie verwenden

### Don'ts ❌

1. **Zu allgemein:** "Schreibe guten Code" hilft nicht
2. **Widersprüchlich:** Instructions sollten sich nicht widersprechen
3. **Zu lang:** Übermäßig lange Instructions verwässern die Wirkung
4. **Veraltete Techniken:** Instructions aktuell halten

---

## Quellen und Referenzen

| Quelle | Beschreibung | Link |
|--------|--------------|------|
| **VS Code Custom Instructions** | Offizielle Dokumentation | [code.visualstudio.com/.../custom-instructions](https://code.visualstudio.com/docs/copilot/customization/custom-instructions) |
| **GitHub Copilot Instructions** | GitHub Dokumentation | [docs.github.com/.../copilot-instructions](https://docs.github.com/en/copilot/customizing-copilot/adding-custom-instructions-for-github-copilot) |
| **Awesome Copilot Instructions** | Community-Beispiele | [github.com/github/awesome-copilot](https://github.com/github/awesome-copilot/tree/main) |
| **Glob Pattern Referenz** | Pattern-Syntax | [code.visualstudio.com/.../glob-patterns](https://code.visualstudio.com/docs/editor/glob-patterns) |

---

> :arrow_left: **Zurück zu:** [Kapitel 1: Einführung](./01_Einführung.md)
>
> :arrow_right: **Weiter zu:** [Kapitel 3: Custom Agents](./03_Custom-Agents.md)

