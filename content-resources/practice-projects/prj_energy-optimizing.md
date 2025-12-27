# Projektdokumentation und Bewertungsmatrix: Energieverbrauchs-Optimierung für öffentliche Gebäude 

Dieses Dokument definiert die Ziele, Anforderungen und Bewertungskriterien für das Semesterprojekt. Als zentraler Leitfaden für die methodische und technische Umsetzung dient das bereitgestellte Skript: `Lernskript-Semesterprojekt-Scrumban-CleanArchitecture.pdf`.

## 1. Projektübersicht

### 1.1 Projektziel
Ziel ist es, den Energieverbrauch von öffentlichen Gebäuden durch das gezielte Beeinflussen der Heizungssteuerung zu optimieren. Dazu wird eine Plattform geschaffen, bei der Raumtemperatursensoren regelmäßig ihre Messdaten an einen zentralen Server senden. Der Server analysiert diese Daten und sendet optimierte Steuerungsbefehle (Zieltemperatur, Toleranzband) zurück, um Energieeffizienz zu gewährleisten.

### 1.2 Aufgabenstellung
Es soll eine umfassende Plattform entwickelt werden, die folgende Kernkomponenten und Funktionen beinhaltet:

*   **Server-Backend:** Eine zentrale Anwendung, die Sensordaten empfängt, verarbeitet und Steuerungsbefehle sendet.
*   **Web-Frontend (Administration & Dashboard):** Eine zentrale Webanwendung, die sowohl administrative Aufgaben als auch die Visualisierung von Daten abdeckt. Hier können Sensoren angelegt, API-Keys verwaltet und Zeitprogramme konfiguriert werden. Zudem dient sie als Dashboard zur Anzeige des Temperaturverlaufs in interaktiven Diagrammen und zur Auswertung der Sensoreffizienz.
*   **Sensor-Simulator:** Eine JavaFX-Anwendung, die das Verhalten eines physischen Raumsensors simuliert, um das Gesamtsystem testen zu können.

Das gesamte System muss **mehr-mandantenfähig** sein. Das bedeutet, verschiedene Institutionen (z.B. Schulen, Gemeinden) können dasselbe System nutzen, ohne Zugriff auf die Daten der jeweils anderen zu haben. Die **Sicherheit und Integrität** der Datenübertragung zwischen Sensor und Server ist dabei ein zentrales Kriterium.

### 1.3 Ausgangssituation & Rahmenbedingungen

*   **Teamgröße:** 7 Schüler
*   **Team-Struktur und Rollen:** Das Team arbeitet nach dem **Pair-Programming-Prinzip** in festen Paaren. Die Rollen sind wie folgt aufgeteilt:
    *   **2 Schüler: Backend-Entwicklung** (Spring Boot API, Datenbank, Geschäftslogik)
    *   **2 Schüler: Web-Frontend-Entwicklung** (Administration & Dashboard)
    *   **2 Schüler: Sensor-Simulator-Entwicklung** (JavaFX-Anwendung)
    *   **1 Schüler: Projektleiter** (übernimmt die Rolle des **Scrum Masters**, koordiniert das Team, pflegt das Board und überwacht den Prozess)
*   **Technologie-Stack:**
    *   **Backend:** Spring (für RestAPI, JPA) auf einem Tomcat Container, relationale Datenbank.
    *   **Frontend:** Flutter (für Web) **oder** ein gängiges JS-Framework (z.B. Vue.js, Angular, React).
    *   **Simulator:** JavaFX.
*   **Projektdauer:** ca. 3/4 eines österreichischen Schuljahres (bis Mai, Maturaklasse) bei ca. 4 Einheiten (à 50 min) pro Woche.
*   **Besondere Anforderungen:** Die Nutzung von **AI Assisted Coding** (insbesondere GitHub Copilot mit seinen erweiterten Features) ist erwünscht und soll als Teil des Entwicklungsprozesses erlernt und reflektiert werden.

---

## 2. Detaillierte Anforderungen

Die Umsetzung des Projekts soll sich an den Methoden und Prinzipien des Leitfadens `Lernskript-Semesterprojekt-Scrumban-CleanArchitecture.pdf` orientieren (*Bei bewussten Abweichungen, sollen diese entsprechend begründet und dokumentiert werden*)

### A. Projektmanagement & Prozess (Scrumban)

1. **Digitales Board:** Das Team muss ein digitales Scrumban-Board (GitHub Projects oder Trello) gemäß Kapitel 1.2.2 des Leitfadens einrichten. Der Projektleiter (Scrum Master) ist für dessen aktive Pflege verantwortlich.
2. **User Stories:** Alle Anforderungen müssen als User Stories im Format `Als <Rolle> möchte ich <Ziel>, um <Nutzen> zu erreichen` im Backlog inklusive der Akzeptanzkritieren formuliert werden.
3. **Anforderungsanalyse:** Die Anforderungen sind auf fehlende oder unklare Vorgaben hin zu überprüfen. Fehlende Details müssen aktiv beim Lehrer, der die Rolle des Auftraggebers übernimmt, eingefordert werden.
4. **Rollenverteilung:** Die Rollen des `Product Owners` (kann vom Projektleiter oder im Team-Konsens wahrgenommen werden) und des `Projektleiters (Scrum Master)` sind gemäß Leitfaden zu leben.

### B. Architektur & Design (Clean Architecture & API-First)

1. **OpenAPI-Spezifikation:** Vor der Implementierung des Backends ist ein "API-First"-Ansatz zu verfolgen. Der Vertrag für die REST-Schnittstelle muss in einer `openapi.yaml`-Datei gemäß Kapitel 2.2.3 spezifiziert werden.
2. **Clean Architecture:** Das Backend soll den Prinzipien der Clean Architecture (Kapitel 2.1) folgen. Eine an Kapitel 2.1.4 angelehnte Paketstruktur (`application`, `infrastructure`) ist dringlich empfohlen.
3. **Ports & Adapters:** Die Kommunikation zwischen den Architekturschichten soll über Ports (Java-Interfaces in der `application`-Schicht) zu realisieren, wie in Kapitel 2.1.3 (Driving & Driven Ports) beschrieben.

### C. Funktionale Anforderungen (Konkretisiert)

1. **Mehr-Mandantenfähigkeit:** Jede Institution ("Mandant") erhält eine eindeutige ID. Alle relevanten Daten müssen über eine `mandant_id` verfügen. Jede API-Anfrage und Datenabfrage muss sicherstellen, dass nur auf die Daten des eigenen Mandanten zugegriffen wird.
2. **Sicherheit:**
    * **Authentifizierung:** Der Zugang zum Web-Frontend muss durch einen Login (z.B. mit Spring Security) geschützt sein.
    * **API-Keys:** Jeder Sensor muss einen einzigartigen, zufällig generierten API-Key erhalten, der im Backend sicher gespeichert wird (z.B. als Hash).
    * **Datenintegrität:** Die vom Sensor gesendeten Daten müssen mittels einer HMAC-Signatur (z.B. HMAC-SHA256) gegen Manipulation gesichert werden.
3. **Sensor-Simulator (JavaFX):** Die Anwendung muss es ermöglichen, Server-URL und API-Key einzugeben, in regelmäßigen Abständen simulierte Temperaturwerte zu senden (inkl. HMAC-Signatur) und die empfangene Zieltemperatur anzuzeigen.
4. **Web-Frontend (Administration & Dashboard):**
    * **Administration:** Verwaltung von Mandanten, Anlegen und Verwalten von Sensoren pro Mandant, Generieren von API-Keys, Erstellen und Bearbeiten von Zeitprogrammen. Für jeden Sensor sollte ein Zeitprogramm hinterlegt werden können, wann welche Zieltemperatur gilt.
    * **Dashboard:** Interaktives Diagramm zur Anzeige des Temperaturverlaufs mit Filterfunktionen (z.B. letzte 3 Tage, Datum von-bis), tabellarische Ansicht zur Auswertung der akkumulierten Zeit, in der sich die Temperatur im Toleranzband befand. Ebenso sollte eine Tabelle existieren in der die akkumulierten Zeiten in denen sich der Sensor innerhalb des Toleranzbandes befand angezeigt wird. Damit kann man quantitativ bewerten welcher Raumsensor am besten funktioniert.

### D. Qualitätssicherung & Kollaboration

1. **Git-Workflow:** Das Team soll den in Kapitel 3.3 des Leitfadens beschriebenen Feature-Branch-Workflow anwenden. Direkte Pushes auf den `main`-Branch wollen möglichst vermieden werden. Jedes Feature wird über einen Pull Request mit obligatorischem Code-Review integriert.
2. **Testing:**
    * **Unit-Tests:** Die Geschäftslogik in den Use Cases/Services **muss** mit Unit-Tests unter Verwendung von Mocking-Frameworks (z.B. Mockito) getestet werden.
    * **Integrationstests:** Das Zusammenspiel von Services mit der Datenbank-Persistenzschicht sollte durch Integrationstests (z.B. mit einer H2 In-Memory-Datenbank) abgesichert werden.
3. **Code-Qualität:** Die im Team vereinbarten Namenskonventionen und Formatierungsregeln sind durch den Einsatz eines Linters (z.B. Checkstyle für Java) durchzusetzen.

### E. Dokumentation & AI-Nutzung

1. **API-Dokumentation:** Die `openapi.yaml` dient als zentrale, technische Dokumentation der Schnittstelle.
2. **Code-Dokumentation:** Öffentliche Klassen und Methoden sind gemäß den Standards der jeweiligen Sprache zu dokumentieren (Javadoc, Dartdoc etc.).
3. **Dokumentation der AI-Nutzung:** Das Team führt ein Log, in dem signifikante Beiträge durch AI-Tools reflektiert und dokumentiert werden.

---

## 3. Bewertungsmatrix

Die Bewertung des Projekts erfolgt nach den folgenden Kriterien und Gewichtungen. Der Fokus liegt gleichermaßen auf der funktionalen Umsetzung und der methodischen sowie technischen Qualität.

| Bewertungskategorie | Gewichtung | Kriterien für die Bewertung (Auszug) |
| :--- | :--- | :--- |
| **1. Funktionale Umsetzung** | 30% | **Hervorragend (1):** Alle Kernanforderungen (inkl. Mehr-Mandantenfähigkeit und Sicherheit) sind robust und fehlerfrei umgesetzt. Die Bedienung ist intuitiv. <br> **Gut (2):** Alle Kernanforderungen sind umgesetzt, es gibt aber kleinere Bugs oder Usability-Schwächen. <br> **Genügend (4):** Die Basisfunktionalität (Sensordaten speichern/anzeigen) funktioniert, aber wesentliche Teile wie Mehr-Mandantenfähigkeit oder Sicherheit sind lückenhaft. |
| **2. Architektur & Code-Qualität** | 30% | **Hervorragend (1):** Die Clean Architecture und die Abhängigkeitsregel wurden konsequent eingehalten. Der Code ist selbsterklärend, sauber strukturiert und folgt den Konventionen. Die API ist nach dem API-First-Prinzip sauber in OpenAPI spezifiziert. <br> **Gut (2):** Die Architekturprinzipien sind erkennbar und größtenteils umgesetzt, es gibt aber vereinzelte "Verletzungen" der Regeln. Der Code ist gut lesbar. <br> **Genügend (4):** Eine Schichtenarchitektur ist vorhanden, aber die Prinzipien der Clean Architecture wurden nicht konsequent verfolgt. Es gibt signifikanten "Spaghetti-Code". |
| **3. Prozess & Kollaboration** | 20% | **Hervorragend (1):** Das Scrumban-Board ist vorbildlich gepflegt. Die Git-History ist sauber und nachvollziehbar. Pull Requests und Code-Reviews wurden diszipliniert und konstruktiv für alle Features genutzt. Die Zusammenarbeit in den Paaren und im Gesamtteam ist erkennbar. <br> **Gut (2):** Der Prozess wurde im Großen und Ganzen eingehalten. Das Board und die Git-History sind meist aktuell. <br> **Genügend (4):** Es wurde mit Git gearbeitet, aber der Workflow wurde oft umgangen. Das Scrumban-Board wurde nur sporadisch gepflegt. |
| **4. Testing & Qualitätssicherung** | 10% | **Hervorragend (1):** Die kritische Geschäftslogik ist durch aussagekräftige Unit-Tests mit hoher Abdeckung abgesichert. Wichtige Integrationspunkte sind getestet. <br> **Gut (2):** Es sind Unit-Tests vorhanden, die die grundlegende Funktionalität abdecken. <br> **Genügend (4):** Es gibt nur wenige oder keine aussagekräftigen automatisierten Tests. |
| **5. Dokumentation & AI-Nutzung** | 10% | **Hervorragend (1):** Die OpenAPI-Spezifikation ist vollständig und professionell. Der Code ist an kritischen Stellen sinnvoll kommentiert. Die Nutzung der AI-Tools ist reflektiert und gut dokumentiert. <br> **Gut (2):** Die API ist dokumentiert und der Code ist verständlich. Die AI-Nutzung ist nachvollziehbar. <br> **Genügend (4):** Die Dokumentation ist lückenhaft oder nicht vorhanden. |

### 3.2 Individuelle Beurteilung (Anteil: 70% der Gesamtnote)

Die individuelle Beurteilung erfolgt im Rahmen eines **persönlichen Fachgesprächs** (ca. 15-20 Minuten pro Schüler) gegen Ende des Projekts. Ziel ist es, die persönliche Leistung und das erworbene Wissen zu evaluieren.

**Bewertet werden folgende drei Bereiche:**

1.  **Nachweis der Eigenleistung:**
    *   Diskussion und Erklärung von selbst geschriebenem Code (basierend auf Git-Commits und Pull Requests).
    *   Erläuterung der spezifischen Herausforderungen im eigenen Aufgabenbereich (Backend, Frontend, Simulator) und der gefundenen Lösungen.
    *   Nachweis der aktiven Teilnahme am Pair-Programming.

2.  **Verständnis des Gesamtprojekts:**
    *   Fähigkeit, die Architektur des Gesamtsystems zu erklären (Warum Clean Architecture? Wie interagieren Frontend, Backend und Simulator?).
    *   Fragen zur Schnittstelle (API): Ein Frontend-Entwickler muss den API-Vertrag erklären können, ein Backend-Entwickler die Designentscheidungen dahinter.
    *   Grundlegendes Verständnis der anderen Projektteile: Ein Backend-Entwickler sollte die grobe Funktionsweise des Frontends erklären können und umgekehrt.

3.  **Methodische und theoretische Kompetenz:**
    *   Verständnis der im Leitfaden beschriebenen Methoden: Warum wird der Feature-Branch-Workflow genutzt? Was ist der Zweck von Scrumban? Warum sind Unit-Tests mit Mocks für die Geschäftslogik entscheidend?
    *   Fähigkeit, theoretische Konzepte (z.B. Abhängigkeitsregel in der Clean Architecture, Zweck von HMAC) auf das konkrete Projekt anzuwenden und zu erklären.

### 3.3 Ermittlung der Gesamtnote

Die Gesamtnote für jeden Schüler wird nach folgender Formel berechnet:

**`Gesamtnote = (Note Projektbewertung * 0.3) + (Note Individuelle Beurteilung * 0.7)`**

**Beispiel:**
Erhält das Team bei der Projektbewertung eine Note von **2 (Gut)** und ein Schüler bei der individuellen Beurteilung eine Note von **1 (Sehr Gut)**, so ergibt sich die Gesamtnote wie folgt:
`(2 * 0.3) + (1 * 0.7) = 0.6 + 0.7 = 1.3`, was einer gerundeten Endnote von **1 (Sehr Gut)** entspricht.