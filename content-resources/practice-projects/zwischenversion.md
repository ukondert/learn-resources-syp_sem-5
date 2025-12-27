Verstanden. Das ist ein exzellenter Ansatz, um sowohl die Teamleistung als auch den individuellen Lernfortschritt und Beitrag fair zu bewerten.

Hier ist die endgültige, vollständige Projektdokumentation, die diese detaillierte Bewertungsstruktur integriert.

---

# Projektdokumentation und Bewertungsmatrix: Energieverbrauchs-Optimierung für öffentliche Gebäude (Finale Fassung)

Dieses Dokument definiert die Ziele, Anforderungen und den detaillierten Bewertungsmodus für das Semesterprojekt. Als zentraler Leitfaden für die methodische und technische Umsetzung dient das bereitgestellte Skript: `Lernskript-Semesterprojekt-Scrumban-CleanArchitecture.md`.

## 1. Projektübersicht

### 1.1 Projektziel
Ziel ist es, den Energieverbrauch von öffentlichen Gebäuden durch das gezielte Beeinflussen der Heizungssteuerung zu optimieren. Dazu wird eine Plattform geschaffen, bei der Raumtemperatursensoren regelmäßig ihre Messdaten an einen zentralen Server senden, welcher daraufhin optimierte Steuerungsbefehle zurücksendet.

### 1.2 Aufgabenstellung
Es soll eine umfassende Plattform entwickelt werden, die folgende Kernkomponenten beinhaltet:

*   **Server-Backend:** Eine zentrale Anwendung, die Sensordaten empfängt, verarbeitet und Steuerungsbefehle sendet.
*   **Web-Frontend (Administration & Dashboard):** Eine zentrale Webanwendung, die sowohl administrative Aufgaben (Sensor-Verwaltung, API-Keys, Zeitprogramme) als auch die Visualisierung von Daten (interaktive Diagramme, Auswertungen) abdeckt.
*   **Sensor-Simulator:** Eine JavaFX-Anwendung, die das Verhalten eines physischen Raumsensors simuliert, um das Gesamtsystem testen zu können.

Das System muss **mehr-mandantenfähig** sein und die **Sicherheit und Integrität** der Datenübertragung gewährleisten.

### 1.3 Ausgangssituation & Rahmenbedingungen

*   **Teamgröße:** 7 Schüler
*   **Team-Struktur und Rollen:** Das Team arbeitet nach dem **Pair-Programming-Prinzip**. Die Rollen sind wie folgt aufgeteilt:
    *   **2 Schüler: Backend-Entwicklung** (Spring Boot API, Datenbank, Geschäftslogik)
    *   **2 Schüler: Web-Frontend-Entwicklung** (Administration & Dashboard)
    *   **2 Schüler: Sensor-Simulator-Entwicklung** (JavaFX-Anwendung)
    *   **1 Schüler: Projektleiter** (übernimmt die Rolle des **Scrum Masters**)
*   **Technologie-Stack:**
    *   **Backend:** Spring (RestAPI, JPA), relationale Datenbank.
    *   **Frontend:** Flutter (für Web) **oder** ein gängiges JS-Framework (z.B. Vue.js, Angular, React).
    *   **Simulator:** JavaFX.
*   **Projektdauer:** ca. 3/4 eines Schuljahres (bis Mai, Maturaklasse).
*   **Besondere Anforderungen:** Die reflektierte Nutzung von **AI Assisted Coding** (insb. GitHub Copilot) ist Teil der Aufgabe.

---

## 2. Detaillierte Anforderungen

Die Umsetzung des Projekts muss sich streng an den Methoden und Prinzipien des Leitfadens orientieren.
_(Die detaillierten Anforderungen aus der vorherigen Antwort bleiben hier unverändert bestehen: Projektmanagement, Architektur, Funktionale Anforderungen, Qualitätssicherung, Dokumentation)_

### A. Projektmanagement & Prozess (Scrumban)
1.  **Digitales Board:** Pflege eines digitalen Scrumban-Boards (GitHub Projects oder Trello).
2.  **User Stories:** Formulierung aller Anforderungen als User Stories.
3.  **Rollenverteilung:** Wahrnehmung der definierten Rollen (Scrum Master, Product Owner).

### B. Architektur & Design (Clean Architecture & API-First)
4.  **OpenAPI-Spezifikation:** Erstellung einer `openapi.yaml`-Datei vor der Implementierung.
5.  **Clean Architecture:** Konsequente Umsetzung der Clean Architecture im Backend.
6.  **Ports & Adapters:** Kommunikation zwischen den Schichten über Interfaces (Ports).

### C. Funktionale Anforderungen (Konkretisiert)
7.  **Mehr-Mandantenfähigkeit:** Trennung der Daten nach Mandanten auf allen Ebenen.
8.  **Sicherheit:** Authentifizierung für das Frontend und Integritätssicherung (HMAC) für die Sensor-API.
9.  **Sensor-Simulator (JavaFX):** Konfigurierbare Anwendung zur Simulation von Sensor-Requests.
10. **Web-Frontend (Admin & Dashboard):** Umsetzung aller administrativen und visualisierenden Funktionen.

### D. Qualitätssicherung & Kollaboration
11. **Git-Workflow:** Strikte Einhaltung des Feature-Branch-Workflows mit Pull Requests und Code-Reviews.
12. **Testing:** Nachweisbare Absicherung der Geschäftslogik durch Unit-Tests und relevanter Schichten durch Integrationstests.
13. **Code-Qualität:** Durchsetzung von Code-Konventionen mittels eines Linters.

### E. Dokumentation & AI-Nutzung
14. **API-Dokumentation:** Vollständige `openapi.yaml`.
15. **Code-Dokumentation:** Standardkonforme Kommentierung von öffentlichem Code.
16. **Dokumentation der AI-Nutzung:** Führen eines Logs zur Reflexion der AI-Unterstützung.

---

## 3. Gesamtbeurteilung des Projekts

Die Gesamtbeurteilung setzt sich aus zwei Teilen zusammen: einer **Projektbewertung (30%)** und einer **individuellen Beurteilung (70%)**. Damit wird sichergestellt, dass sowohl die Qualität des Endprodukts als auch der persönliche Beitrag und Lernerfolg jedes Teammitglieds fair bewertet werden.

### 3.1 Projektbewertung (Anteil: 30% der Gesamtnote)

Dieser Teil bewertet die Qualität des finalen Produkts und den kollaborativen Prozess des gesamten Teams. Die hier vergebene Note gilt für alle Teammitglieder gleichermaßen.

| Bewertungskategorie | Gewichtung | Kriterien für die Bewertung (Auszug) |
| :--- | :--- | :--- |
| **1. Funktionale Umsetzung** | 30% | **Hervorragend (1):** Alle Anforderungen inkl. Mehr-Mandantenfähigkeit und Sicherheit sind robust und fehlerfrei umgesetzt. <br> **Genügend (4):** Nur die Basisfunktionalität ist vorhanden, wesentliche Teile sind lückenhaft. |
| **2. Architektur & Code-Qualität** | 30% | **Hervorragend (1):** Die Clean Architecture und der API-First-Ansatz wurden konsequent und korrekt umgesetzt. Der Code ist vorbildlich strukturiert. <br> **Genügend (4):** Architekturprinzipien wurden nicht konsequent verfolgt; signifikanter "Spaghetti-Code". |
| **3. Prozess & Kollaboration** | 20% | **Hervorragend (1):** Das Scrumban-Board ist vorbildlich gepflegt. Der Git-Workflow mit Pull Requests und Reviews wurde diszipliniert gelebt. <br> **Genügend (4):** Der Prozess wurde häufig umgangen (z.B. direkte Pushes auf `main`). |
| **4. Testing & Qualitätssicherung** | 10% | **Hervorragend (1):** Die kritische Geschäftslogik ist durch aussagekräftige Unit-Tests mit hoher Abdeckung abgesichert. <br> **Genügend (4):** Es gibt nur wenige oder keine aussagekräftigen automatisierten Tests. |
| **5. Dokumentation & AI-Nutzung** | 10% | **Hervorragend (1):** Die Dokumentation (API, Code, AI-Log) ist vollständig und professionell. <br> **Genügend (4):** Die Dokumentation ist lückenhaft oder nicht vorhanden. |

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