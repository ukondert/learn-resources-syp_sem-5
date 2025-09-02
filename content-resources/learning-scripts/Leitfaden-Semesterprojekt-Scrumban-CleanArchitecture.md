<h1>Leitfaden für das Semesterprojekt: Praktische Umsetzung mit Scrumban und Clean Architecture</h1>

---

# Das Fundament – Projektmanagement und Planung

## 1. Einleitung: Vom Konzept zum Code

*   **1.1. Ziel dieses Leitfadens:** Erklärung, wie dieses Skript als roter Faden durch das Projekt führt – von der Idee über die Planung bis zur strukturierten Umsetzung.
*   **1.2. Die Analogie des Architekten:** Wir vergleichen das Projekt mit dem Bau eines Hauses: Scrumban ist unsere flexible Bauleitung, Clean Architecture der Bauplan für ein stabiles Fundament und der Tech-Stack das vorgegebene Baumaterial.
*   **1.3. Überblick: Die drei Säulen des Projekts:** Kurze Vorstellung der Kernthemen:
    1.  **Projektmanagement** (Scrumban)
    2.  **Software-Architektur** (Clean Architecture)
    3.  **Implementierungsstrategie** (API-First)

### 2. Agiles Projektmanagement mit Scrumban

*   **2.1. Was ist Scrumban und warum ist es ideal für unser Projekt?** Eine einfache Erklärung, die Scrum (Struktur durch Sprints/Zyklen) und Kanban (visueller Workflow, Flexibilität) kombiniert. Der Fokus liegt auf weniger Zeremonien und mehr Flow.
*   **2.1.1. Die agilen Rollen: Vom Scrum-Team zum Scrumban-Flow**
    *   **Die klassischen Scrum-Rollen – Ein eingespieltes Trio:**
        *   **Product Owner (Der Visionär):** Verantwortlich für das "Was" und "Warum". Er/Sie managt das Product Backlog, priorisiert die Anforderungen und stellt sicher, dass das Team am wertvollsten Feature arbeitet.
            *   *Analogie: Der Drehbuchautor, der die Vision des Films vorgibt.*
        *   **Scrum Master (Der Coach):** Verantwortlich für den Prozess. Er/Sie sorgt dafür, dass das Team die Regeln einhält, beseitigt Hindernisse und coacht das Team zur kontinuierlichen Verbesserung.
            *   *Analogie: Der Regisseur, der für reibungslose Dreharbeiten sorgt.*
        *   **Development Team (Die Experten):** Verantwortlich für das "Wie". Ein selbstorganisiertes Team, das die Anforderungen in fertige Software umsetzt.
            *   *Analogie: Die Film-Crew, die die Vision in die Tat umsetzt.*
    *   **Der Fokus-Shift in Scrumban – Mehr Flow, weniger Zeremonie:**
        In Scrumban bleiben die grundlegenden Verantwortlichkeiten erhalten, aber der Fokus verschiebt sich von starren Events hin zu einem kontinuierlichen Arbeitsfluss.
        *   **Product Owner:** Die Planung wird flexibler. Statt starrer Sprint-Planungen sorgt der Product Owner für einen kontinuierlich gefüllten und priorisierten "Ready"-Bereich im Backlog, aus dem sich das Team Aufgaben "zieht", sobald Kapazität frei wird.
        *   **Scrum Master wird zum "Flow-Manager":** Der Fokus liegt weniger auf der Einhaltung von Scrum-Events und mehr auf der Optimierung des Workflows. Wichtige Aufgaben sind:
            *   Das Board und den Workflow visualisieren und verbessern.
            *   Engpässe (Bottlenecks) im Prozess identifizieren.
            *   Auf die Einhaltung von WIP-Limits (Work in Progress) achten, um das Team vor Überlastung zu schützen.
        *   **Das Team:** Arbeitet nicht mehr in festen Sprints, sondern nach dem **Pull-Prinzip**. Wenn eine Aufgabe erledigt ist, wird die nächste mit der höchsten Priorität aus dem Backlog geholt. Dies fördert einen gleichmäßigen Arbeitsfluss.
*   **2.2. Werkzeuge einrichten: Das digitale Whiteboard**
    *   **Option A: GitHub Projects:** Schritt-für-Schritt-Anleitung zum Erstellen eines Projekt-Boards, Einrichten von Spalten (`Backlog`, `Geplant`, `In Arbeit`, `Review/Test`, `Fertig`) und Nutzen von Issues als User Stories.
    *   **Option B: Trello:** Anleitung zum Aufsetzen eines Boards und zur Nutzung kostenloser "Power-Ups" (z.B. für Story Points oder WIP-Limits).
*   **2.3. Der Scrumban-Workflow in der Praxis:**
    *   **Anforderungen als User Stories formulieren:** Wie man Aufgaben aus der Sicht des Nutzers beschreibt.
    *   **Planung & Priorisierung:** Wie man Aufgaben aus dem Backlog für den nächsten Arbeitszyklus (1-2 Wochen) auswählt.
    *   **Das tägliche Arbeiten:** Der Weg einer Aufgabe über das Board und die Bedeutung von "Work in Progress"-Limits.
    *   **Review & Retrospektive:** Wie man am Ende eines Zyklus den Fortschritt präsentiert und den Arbeitsprozess verbessert.

---

# Die Struktur – Software-Architektur und Technologie

## 3. Clean Architecture: Ein Bauplan für wartbare Software

*   **3.1. Das "Warum": Probleme von ungeordnetem Code.** Kurze, abschreckende Beispiele (Spaghetti-Code), um die Notwendigkeit einer klaren Architektur zu motivieren.
*   **3.2. Die Kernidee: Trennung der Verantwortlichkeiten.** Erklärung der Schichten (Entities, Use Cases, Interface Adapters, Frameworks & Drivers) anhand einer einfachen Grafik und Analogie (z.B. eine Zwiebel).
*   **3.3. Die Abhängigkeitsregel:** Das wichtigste Prinzip – "Innere Schichten wissen nichts von äußeren Schichten" – einfach und verständlich erklärt.
*   **3.4. Praktische Umsetzung im Projekt:** Eine konkrete Ordnerstruktur für das Spring Boot Backend wird vorgeschlagen, die den Schichten der Clean Architecture entspricht.

## 4. API-First: Die Schnittstelle als Vertrag

*   **4.1. Was bedeutet API-First?** Erklärung des Prinzips: Zuerst wird die Schnittstelle (die "Speisekarte") entworfen, bevor die Logik ("die Küche") implementiert wird.
*   **4.2. Vorteile für die Teamarbeit:** Wie Frontend- und Backend-Entwickler parallel arbeiten können, sobald der API-"Vertrag" steht.
*   **4.3. Praktische Umsetzung mit OpenAPI (Swagger):**
    *   Kurzeinführung in die OpenAPI-Spezifikation.
    *   Anleitung, wie man eine einfache `openapi.yaml`-Datei schreibt, um einen Endpunkt (z.B. `GET /users`) zu definieren.
    *   Tipp: Verwendung von Online-Editoren (wie dem Swagger Editor) zur Visualisierung und Validierung.

---

# Die Umsetzung – Praktische Leitfäden

## 5. Schritt-für-Schritt: Vom Feature zur Implementierung

*   **5.1. Der rote Faden:** Ein durchgängiges Beispiel-Feature (z.B. "Benutzerregistrierung") wird von der User Story bis zum Code verfolgt.
    1.  **User Story** auf dem Scrumban-Board erstellen.
    2.  **API-Endpunkt** in `openapi.yaml` definieren.
    3.  **Backend (Spring Boot):** Controller, Service und Repository-Interface gemäß der Clean Architecture-Ordnerstruktur anlegen.
    4.  **Frontend (z.B. Flutter/React):** Eine einfache UI erstellen, die den definierten API-Endpunkt anspricht.
*   **5.2. Tipps für den Technologie-Stack:**
    *   **Backend:** Hinweise zur Konfiguration von Spring Boot für die gewählte Datenbank (H2 für schnelle Tests, PostgreSQL/MySQL für die "Produktion").
    *   **Frontend:** Empfehlungen für die saubere Anbindung einer REST-API in den verschiedenen Technologien (z.B. mit `http`-Package in Flutter oder `axios` in React).

# 6. Glossar & weiterführende Ressourcen

*   **Glossar:** Alle wichtigen Begriffe (Scrumban, Clean Architecture, API-First, User Story etc.) kurz und prägnant erklärt.
*   **Ressourcen:** Links zu nützlichen Tools, Artikeln und Tutorials, die über den Inhalt des Skripts hinausgehen.
