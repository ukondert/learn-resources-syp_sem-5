---
description: "Automatisiertes Worklog & Entwicklungsprotokoll mit MCP Memory Server"
applyTo: "**"
---

# Worklog Instructions: Automatisiertes Entwicklungsprotokoll mit MCP Memory Server

## Zweck
Diese Datei definiert, wie bei jedem Entwicklungsschritt, Fehler und Fix automatisch ein Worklog im Memory-MCP-Server erzeugt wird. Sie ist so gestaltet, dass sie von Copilot Chat in VS Code automatisch bei jedem relevanten Vorgang angewendet wird.

---

## Anwendung

- Die Instructions werden automatisch bei jedem Chat-Request angewendet, der zu Code-Änderungen, Tests, Bugfixes oder Reviews führt.
- Die Datei kann mit anderen instructions.md-Dateien kombiniert werden, um projektspezifische Regeln zu ergänzen.

---

## Struktur einer Observation

Jede Observation im Worklog enthält:
- Zeitstempel (automatisch oder manuell)
- Datei/Feature/Modul
- Aktion (Implementierung, Bugfix, Test, Review, Fehler, Lösung)
- Beschreibung (Was wurde gemacht? Warum? Optional: Code-Snippet)
- Status (optional: success/fail)

**Beispiel:**
```
[2025-07-29 10:15] [klassen_screen.dart] [Implementierung] Responsive Dialog-Logik für mobile/desktop umgesetzt.
[2025-07-29 10:22] [klasse_dialog_temp.dart] [Fehler] FormControlParentNotFoundException beim Öffnen des Dialogs.
[2025-07-29 10:25] [klasse_dialog_temp.dart] [Lösung] ReactiveForm um das gesamte Scaffold gelegt, Fehler behoben.
```

---

## Automatisiertes Logging-Pattern

- Nach jedem `apply_patch`, `run_in_terminal`, Commit oder Testlauf wird automatisch eine Observation an den Memory-MCP-Server gesendet.
- Bei Fehlern wird eine Observation mit Fehlerbeschreibung und Stacktrace gespeichert.
- Nach erfolgreichem Fix wird eine weitere Observation mit der Lösung gespeichert.
- **Zeitstempel verwenden die aktuelle Systemzeit** - nicht geschätzte oder fiktive Zeiten.
- Am Ende der Session soll der Agent alle Observations als Markdown-Worklog exportieren in das Verzeichnis`work-logs`.

## Datei-Namenskonvention

WORKLOG-Dateien folgen der Namenskonvention: `WORKLOG_YYYY-MM-DD_hh-mm_[name].md`

**Format-Erklärung:**
- `YYYY-MM-DD`: Erstellungsdatum (ISO 8601 Format, basierend auf aktueller Systemzeit)
- `hh-mm`: Erstellungszeit (Stunden und Minuten im 24h-Format, basierend auf aktueller Systemzeit)
- `[name]`: Beschreibender Name des Features/Moduls/Fixes

**Zeitstempel-Regel:**
- **IMMER die aktuelle Systemzeit verwenden** - keine fiktiven oder geschätzten Zeiten
- Beispiel: Wenn die Systemzeit 09:28 ist, verwende 09:28 und nicht 15:30

**Beispiele:**
- `WORKLOG_2025-08-01_09-28_ResponsiveDialog_DataTable.md`
- `WORKLOG_2025-08-01_09-30_Kuerzel_Feature.md`
- `WORKLOG_2025-08-01_09-35_StammdatenView_Implementation.md`


## Best Practices

- **Klar und präzise**: Jede Observation sollte verständlich und nachvollziehbar sein.
- **Chronologisch**: Die Reihenfolge der Observations bildet den tatsächlichen Arbeitsverlauf ab.
- **Verlinkung**: Bei Fehlern und deren Lösungen sollte eine Referenz (z.B. Fehler-ID oder Zeitstempel) gesetzt werden.
- **Export**: Das finale Worklog dient als Dokumentation und kann für Reviews, Audits oder Wissensmanagement genutzt werden.

---

## Output-Format

Die Struktur der erstellten Worklogdatei hat dem folgenden Markdown-Template zu folgen: `worklog-template.md` in `work-log/templates/`


## Hinweise

- Die Instructions können beliebig erweitert und an projektspezifische Anforderungen angepasst werden.
- Sie können mit anderen `.instructions.md`-Dateien kombiniert und in Prompt-Files referenziert werden.
