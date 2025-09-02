### Von Vibe-Coding zu Context Engineering

Quelle: https://www.youtube.com/watch?v=Egeuql3Lrzg

In der Welt der Softwareentwicklung mit künstlicher Intelligenz (KI) haben sich die Methoden rasant entwickelt. Anfangs gab es einen großen Hype um das sogenannte „Vibe-Coding“, einen sehr intuitiven Ansatz. Doch für professionelle und stabile Software hat sich gezeigt, dass ein strukturierterer Ansatz notwendig ist: das **Context Engineering**. Dieses Skript erklärt beide Konzepte, zeigt ihre Unterschiede auf und bietet eine praktische Anleitung zur Anwendung von Context Engineering.

---

#### **Das Zeitalter des Vibe-Codings**

**1.1 Was ist Vibe-Coding?**

Der Begriff „Vibe-Coding“ wurde Anfang 2025 von dem bekannten KI-Experten Andrej Karpathy geprägt. Es beschreibt eine Art des Programmierens, bei der man sich fast vollständig auf einen KI-Coding-Assistenten verlässt. Man gibt nur vage Anweisungen und lässt die KI den Code „nach Gefühl“ (engl. *vibe*) generieren, ohne den erstellten Code im Detail zu überprüfen oder zu validieren.

**Merkmale des Vibe-Codings:**
*   **Intuitionsbasiert:** Man verlässt sich darauf, dass die KI die Absicht „fühlt“.
*   **Minimaler Input:** Kurze, oft unpräzise Anweisungen.
*   **Keine Validierung:** Der generierte Code wird kaum oder gar nicht auf Korrektheit und Qualität geprüft. Man klickt oft einfach auf „Accept“.

**1.2 Anwendungsfälle und Grenzen**

Vibe-Coding ist nicht grundsätzlich schlecht. Es eignet sich hervorragend für:
*   **Schnelles Prototyping:** Um eine Idee schnell auszuprobieren.
*   **Wochenend-Hacks und Hackathons:** Wenn Geschwindigkeit wichtiger ist als Stabilität.

Das große Problem entsteht, wenn man versucht, auf diese Weise erstellten Code in echten, produktiven Anwendungen zu verwenden. Eine Studie von Qodo zur „State of AI Code Quality“ zeigte, dass **76,4 % der Entwickler nur geringes Vertrauen** haben, von KI generierten Code ohne menschliche Überprüfung zu veröffentlichen. Der Grund dafür ist die hohe Häufigkeit von „Halluzinationen“, also Fehlern oder irreführendem Code, den die KI produziert.

> **Fazit:** Vibe-Coding basiert auf Intuition, und **Intuition skaliert nicht**. Für robuste, wartbare und verlässliche Software braucht es Struktur.

#### **Context Engineering – Der Paradigmenwechsel**

**2.1 Was ist Context Engineering?**

Context Engineering ist die Disziplin, einem KI-Coding-Assistenten alle notwendigen Informationen (den Kontext) so bereitzustellen, dass er eine Aufgabe zuverlässig und von Anfang bis Ende korrekt erledigen kann.

Es geht darum, den Kontext als eine wertvolle, zu gestaltende Ressource zu behandeln, genau wie den Programmcode selbst. Tobi Lütke, der CEO von Shopify, beschreibt es als „die Kunst, den gesamten Kontext für eine Aufgabe bereitzustellen, damit sie vom LLM plausibel gelöst werden kann“.

**2.2 Unterschied zum Prompt Engineering**

Prompt Engineering, also das Formulieren guter Anweisungen, ist nur ein kleiner Teil des Context Engineerings. Wie ein im Video gezeigtes Diagramm verdeutlicht, umfasst Context Engineering ein ganzes Ökosystem von Informationen:

*   **Prompt Engineering:** Die direkte Anweisung an die KI.
*   **Strukturierte Outputs:** Vorgaben, wie die KI antworten soll (z.B. in einem bestimmten Datenformat).
*   **State / History / Memory:** Die Fähigkeit der KI, sich an frühere Interaktionen und Ergebnisse zu erinnern.
*   **RAG (Retrieval-Augmented Generation):** Die Einbindung von externem Wissen, wie z.B. spezifischer Dokumentation.

> :bulb: **Context Engineering ist 10x besser als Prompt Engineering und 100x besser als Vibe Coding.**

#### **Praktische Umsetzung von Context Engineering**

Das Video stellt eine Vorlage (Template) auf GitHub vor, die als Blaupause für eigene Projekte dienen kann. Der Prozess gliedert sich in zwei Hauptphasen: die Planungs- und die Ausführungsphase.

**Phase 1: Planung und Kontext-Erstellung**

1.  **Globale Regeln festlegen (Die `CLAUDE.md`-Datei):**
    Diese Datei enthält projektweite Regeln und Richtlinien, die die KI bei jeder Interaktion befolgen muss. Dazu gehören:
    *   **Projekt-Bewusstsein:** Wie die KI die Architektur und Ziele verstehen soll.
    *   **Code-Struktur:** Vorgaben zu Dateigrößen, Modulorganisation etc.
    *   **Testanforderungen:** Z.B. dass für jede neue Funktion Unit-Tests mit einer bestimmten Abdeckung erstellt werden müssen.
    *   **Stil und Konventionen:** Programmiersprache, Formatierungsregeln (z.B. PEP8), Dokumentationsstandards.

2.  **Anforderungen definieren (Die `INITIAL.md`-Datei):**
    Hier wird die konkrete Funktion beschrieben, die implementiert werden soll. Diese Datei enthält:
    *   **Feature:** Eine detaillierte Beschreibung der Funktion.
    *   **Examples:** Relevante Code-Beispiele, die der KI als Vorbild dienen.
    *   **Documentation:** Links zu externen APIs oder Bibliotheken, die verwendet werden sollen.
    *   **Other Considerations:** Hinweise auf potenzielle Fallstricke oder spezielle Anforderungen.

**Phase 2: Ausführung mit einem Product Requirements Prompt (PRP)**

1.  **PRP generieren:** Anstatt direkt mit dem Codieren zu beginnen, wird die KI zunächst angewiesen, einen **Product Requirements Prompt (PRP)** zu erstellen. Dies ist ein extrem detaillierter Implementierungsplan, der Folgendes enthält:
    *   Eine vollständige Analyse der Aufgabe.
    *   Eine Schritt-für-Schritt-Anleitung zur Implementierung.
    *   Pläne für Fehlerbehandlung und Validierung.
    *   Die genaue Definition der zu erstellenden Tests.

2.  **PRP ausführen:** Dieser finale, von der KI erstellte Plan (der PRP) wird nun als eine einzige, umfassende Anweisung an die KI gegeben. Da der gesamte Kontext nun vorhanden ist, kann die KI die Funktion, inklusive Code, Tests und Dokumentation, in einem Durchgang implementieren.

Dieser strukturierte Prozess reduziert Fehler drastisch, stellt die Code-Qualität sicher und macht das Ergebnis planbar und verlässlich.

#### **Grenzen des Context Engineering in agilen Projekten (z.B. Scrum)**

Obwohl Context Engineering sehr mächtig ist, stößt der im Video gezeigte Ansatz in agilen Umgebungen wie Scrum an seine Grenzen.

*   **Konflikt mit Iteration:** Scrum basiert auf kurzen Entwicklungszyklen (Sprints), in denen Anforderungen sich ändern können. Ein riesiger, im Voraus erstellter PRP, der eine große Funktion von A bis Z plant, widerspricht dem agilen Prinzip, nur das Notwendigste „just in time“ zu planen.

*   **Aufwand vs. Nutzen:** In einem dynamischen Projekt, in dem sich Prioritäten schnell ändern, könnte der Aufwand, einen perfekten und umfassenden PRP zu erstellen, verschwendet sein, wenn die Anforderungen sich im nächsten Sprint bereits ändern.

**Anpassung für agile Teams:**

Context Engineering ist dennoch wertvoll. Anstatt einen PRP für ein gesamtes Projekt zu erstellen, können agile Teams die Methode nutzen, um:
*   **Gut definierte User Stories oder Epics** innerhalb eines Sprints umzusetzen.
*   Die `CLAUDE.md`-Datei als „Definition of Done“ für die KI zu verwenden, um konsistente Qualität sicherzustellen.
*   Den Planungs- und Ausführungsprozess auf kleinere, überschaubare Arbeitspakete anzuwenden, die in einen Sprint passen.

> :bulb: So verbindet man die Struktur und Verlässlichkeit des Context Engineerings mit der Flexibilität agiler Methoden.