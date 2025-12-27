Kurzfassung vorweg: **Ja, Antigravity behandelt diese „Custom Workflows“ intern anders als VS Code reine Prompt-Files**, *auch wenn* Oberfläche und Aufruf (`/…`) bewusst ähnlich gestaltet sind.

Im Detail:

---

## 1. Gemeinsame Oberfläche ≠ gleiche Semantik

Du hast richtig beobachtet:

* **Antigravity**

  * definiert Workflows unter `.agents/workflows`
  * Aufruf über `/workflow-name`
  * läuft **innerhalb von VS Code**

* **VS Code Copilot**

  * definiert Prompt-Files (`.prompt.md`)
  * Aufruf ebenfalls über `/prompt-name`

👉 **Diese Gleichheit ist UX-Design**, kein Hinweis auf identische interne Behandlung.

---

## 2. VS Code Custom Prompts: „Prompt als Textvorlage“

**Interne Rolle in VS Code:**

Ein Custom Prompt ist letztlich:

* eine **statische Prompt-Vorlage**
* mit optionalem Frontmatter (Model, Agent-Rolle, Tools)
* die **1-zu-1 an den LLM-Call** übergeben wird

**Wichtig:**

* Keine Zustandsverwaltung
* Keine mehrstufige Ausführung
* Keine Planung
* Keine Persistenz über den einzelnen Chat-Turn hinaus

Technisch:

* Prompt-File → Prompt-String → LLM → Antwort
* VS Code ist **nur Transport + UI**

👉 VS Code kennt **keinen Workflow-Begriff**, nur Prompts.

---

## 3. Antigravity Workflows: „Prompt als Steuerlogik“

In Antigravity ist ein Workflow **kein bloßer Prompt**, sondern eine **Ausführungseinheit**.

### Was intern zusätzlich passiert

Ein `.agents/workflows/*`-Workflow wird von Antigravity typischerweise:

1. **geparst** (nicht nur gelesen)
2. **als strukturierte Task-Definition interpretiert**
3. an einen **Agent-Controller** übergeben
4. **mehrphasig ausgeführt**

Das bedeutet:

* Ein Workflow kann:

  * mehrere Schritte enthalten
  * Sub-Prompts erzeugen
  * Agenten auswählen
  * Tools (Editor, FS, Terminal) sequenziell einsetzen
  * Zwischenergebnisse bewerten
  * Entscheidungen treffen („continue / retry / branch“)

👉 Der Prompt ist **Input für eine Engine**, nicht das Endprodukt.

---

## 4. Entscheidender Unterschied: Wer kontrolliert den Ablauf?

### VS Code Prompt

```
User → /prompt → LLM → Antwort → fertig
```

* Linear
* Stateless
* Reaktiv

### Antigravity Workflow

```
User → /workflow
      → Agent interpretiert Ziel
      → plant Schritte
      → führt Aktionen aus
      → ruft intern weitere Prompts
      → aggregiert Ergebnisse
      → liefert Artefakte
```

* Nicht-linear
* Zustandsbehaftet
* Zielorientiert

👉 **Der Slash-Command triggert in Antigravity eine Engine, nicht nur einen Prompt.**

---

## 5. Warum Antigravity trotzdem wie VS Code aussieht

Das ist kein Zufall:

* Antigravity **setzt bewusst auf das VS Code Prompt-Paradigma**

  * gleiche UX
  * gleiche mentale Modelle für Entwickler
* Intern wird aber:

  * der Prompt **nicht direkt an das LLM**
  * sondern an einen **Agent-Runtime-Layer** gegeben

Man kann es so ausdrücken:

> VS Code Prompts = *Makros für Texte*
> Antigravity Workflows = *Makros für Verhalten*

---

## 6. Vergleich auf Systemebene

| Aspekt            | VS Code Prompt   | Antigravity Workflow            |
| ----------------- | ---------------- | ------------------------------- |
| Slash-Command     | UI-Alias         | Einstiegspunkt in Agent-Runtime |
| Prompt            | Endprodukt       | Steuerinput                     |
| Ablauf            | Single-Turn      | Multi-Step                      |
| Zustand           | keiner           | Workflow-State                  |
| Tool-Nutzung      | implizit, passiv | explizit, aktiv                 |
| Rolle von VS Code | Host             | Ausführungsumgebung             |

---

## 7. Fazit (klar beantwortet)

**Ja, Antigravity behandelt diese Workflows fundamental anders als VS Code Custom Prompts.**

* Die Ähnlichkeit liegt **nur in der Bedienung**
* Der Unterschied liegt **in der Ausführungslogik**
* Antigravity nutzt Prompts als **Instruktionssprache für Agenten**
* VS Code nutzt Prompts als **direkte LLM-Anfragen**

Wenn du willst, kann ich dir:

* ein **konkretes Pseudo-Workflow-Beispiel** (Antigravity vs. Prompt)
* oder eine **Didaktik-Grafik für Schüler/Studierende**
* oder eine **Analogie zu Build-Pipelines vs. Shell-Commands**

erstellen.
