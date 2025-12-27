# KI-Workflows in VS Code: Prompt-Dateien, Custom Instructions und Agenten

Dieses Kapitel behandelt die tiefgehenden Möglichkeiten zur Anpassung von GitHub Copilot in Visual Studio Code. Es werden die Unterschiede zwischen **Prompt-Dateien**, **Benutzerdefinierten Anweisungen (Custom Instructions)** und **Benutzerdefinierten Agenten (Custom Agents)** erläutert und gezeigt, wie diese Bausteine für hochgradig spezialisierte KI-Workflows zusammenarbeiten.

## 1. Einleitung: Die Komponenten der Copilot-Steuerung

Um Copilot effektiv anzupassen, ist ein Verständnis der Kommunikation mit dem Large Language Model (LLM) unerlässlich. Jede Anfrage sendet ein komplexes **Kontextfenster** an das Modell, welches sich aus dem **System Prompt** und dem **User Prompt** zusammensetzt.

### Der System Prompt

Der System Prompt definiert die grundlegenden Regeln und die Identität des Agenten. Er teilt dem LLM mit, *wie* es sich zu verhalten hat, und besteht aus vier Hauptabschnitten:

1.  **Kernidentität & Globale Regeln:** Definiert die allgemeine Rolle des Agenten (z. B.: „Du bist ein intelligenter AI Coding Assistant“).
2.  **Modellspezifische Anweisungen:** Regeln, die spezifische Eigenschaften oder Schwächen des verwendeten LLM korrigieren.
3.  **Anweisungen zur Werkzeugnutzung:** Erklärt dem Agenten die Verwendung interner Tools (wie Editor, Terminal etc.).
4.  **Anweisungen zum Ausgabeformat:** Legt fest, wie die Antwort für eine korrekte Verarbeitung formatiert sein muss.

### Der User Prompt

Der User Prompt enthält die spezifischen Informationen der aktuellen Anfrage und Umgebung:

1.  **Umgebungsinformationen:** Details zum Betriebssystem.
2.  **Workspace-Informationen:** Textdarstellung der Projektstruktur (Ordner und Dateien).
3.  **Kontextinformationen:** Aktueller Zeitstempel, Liste offener Terminals.
4.  **Editor-Kontext:** Inhalt manuell hinzugefügter Dateien.
5.  **Benutzeranfrage:** Die eigentliche Nachricht des Nutzers.

Diese Kette bildet das Kontextfenster für jede Interaktion.

## 2. Custom Instructions (Benutzerdefinierte Anweisungen)

Custom Instructions dienen als erste Anpassungsstufe, um dem Agenten **hochrangiges Wissen** über das Projekt zu vermitteln und sein Verhalten langfristig zu steuern.

*   **Zweck:** Bereitstellung von Informationen zu Projektarchitektur, Designmustern oder Codierungsstandards (z. B. Framework-Best-Practices).
*   **Speicherort:** Als Markdown-Datei (z. B. `copilot-instructions.md`) im `.github`-Ordner des Projekts. Dies erleichtert das Teilen im Team.
*   **Platzierung im Prompt:** Sie werden an das **Ende des System Prompts** angehängt. Als letzte Anweisungen im System Prompt besitzen sie eine hohe Priorität.

Bei jeder Nachricht liest Copilot diese Datei und fügt ihren Inhalt vor dem User Prompt in das Kontextfenster ein.

## 3. Prompt Files (Prompt-Dateien)

Prompt Files sind **wiederverwendbare, aufgabenorientierte Prompts**. Sie ermöglichen das Speichern komplexer Anweisungen, die über Slash-Befehle (z. B. `/plan`) im Chat abgerufen werden können.

*   **Zweck:** Definition von Anweisungen für spezifische, wiederkehrende Aufgaben.
*   **Modell-Override:** Im Frontmatter der Datei kann ein **spezielles LLM-Modell** festgelegt werden. Dies erlaubt die Nutzung kostengünstigerer Modelle für einfache Aufgaben oder Premium-Modelle für komplexe Anforderungen.
*   **Platzierung im Prompt:** Der Inhalt wird am **Anfang des User Prompts** eingefügt, noch **vor** Kontext-Elementen wie Uhrzeit oder Workspace-Informationen.

Durch diese Strukturierung wird das Problem der **Kontext-Degradation** (Context Rot) minimiert, da lange Chat-Verläufe vermieden und Aufgaben präzise definiert werden.

## 4. Custom Agents (Benutzerdefinierte Agenten)

Custom Agents stellen die **fortschrittlichste Anpassungsstufe** dar und verändern das Standardverhalten von Copilot grundlegend.

*   **Zweck:** Erstellung von Agenten mit spezifischer **Identität** und **Workflow** für komplexe, iterative Aufgaben.
*   **Komponenten:** Enthalten Anweisungen, verfügbare **Tools** und **Handoffs** (Aktionen nach Abschluss eines Teilschritts, z. B. Übergabe an einen anderen Agenten).
*   **Platzierung im Prompt:** Die Anweisungen stehen am **Ende des System Prompts**, sogar **nach** den Custom Instructions.

## 5. Die Komposition von Agentic Workflows

Der größte Nutzen entsteht durch die **Kombination** dieser Werkzeuge zu anspruchsvollen "Agentic Workflows". Ein bewährter Ansatz ist die Trennung von **Planung** und **Implementierung**:

1.  **Planung (Premium-Modell & Prompt File):** Nutzung einer `/plan`-Prompt-Datei mit einem leistungsstarken Modell (z. B. Claude Opus), um einen detaillierten Plan zu erstellen. Dieser Plan wird in einer separaten Datei gespeichert (z. B. `implementation-plan.md`), die alle Schritte und Code-Schnipsel enthält.
2.  **Implementierung (Implement Agent & Günstiges Modell):** Start einer neuen Chat-Sitzung mit einem **Implement Agent**, der auf einem effizienteren Modell läuft. Dieser Agent nutzt den erstellten Plan als Kontext und führt die Schritte systematisch aus.

Dieser Workflow optimiert sowohl die Kosten als auch die Qualität der Ergebnisse, da die "Denk"-Arbeit vom teuren Modell übernommen wird, während die Ausführung effizient erfolgt.

## Zusammenfassung

Die drei Ebenen der Anpassung unterscheiden sich in Funktion und Positionierung im Prompt:

*   **Custom Instructions:** Liefern allgemeine **Projektinformationen** und stehen **zuletzt im System Prompt**.
*   **Prompt Files:** Sind **wiederverwendbare Aufgaben-Definitionen**, stehen **zuerst im User Prompt** und ermöglichen **Modell-Wahl**.
*   **Custom Agents:** Definieren **spezifisches Verhalten und Workflows**, stehen **ganz am Ende des System Prompts** (nach Instructions).