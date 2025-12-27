### **Video-Dokumentation: AI Dev Days - Erstellen mit Agenten in VS Code**

**Konzept der "Agenten"**

Zu Beginn wird das zentrale Konzept eines "Agenten" im Kontext der Softwareentwicklung erklärt:
*   Ein Agent ist eine KI-Funktionalität, die in der Lage ist, im Auftrag des Entwicklers Code zu schreiben, Aufgaben auszuführen und Probleme zu lösen.
*   Das Hauptziel ist es, Entwicklern zu ermöglichen, schneller zu arbeiten und im "Flow" zu bleiben, indem sie sich auf die Kernlogik ihrer Arbeit konzentrieren können, während der Agent sich um repetitive oder komplexe Aufgaben kümmert.

---

### **Demo 1: Agenten-gesteuerte App-Entwicklung (Osvaldo Ortega Valencia)**

Osvaldo demonstriert die agentischen Funktionen anhand einer von ihm entwickelten iOS-App namens **"Spokes"**, einer Anwendung für Fahrradtouren.

**1. Kompilieren und Starten der App per Sprachbefehl:**
*   **Szenario:** Ein Entwickler hat ein Projekt geklont, kennt sich aber nicht damit aus, wie man es kompiliert und ausführt.
*   **Aktion:** Osvaldo gibt den einfachen Befehl in natürlicher Sprache in das Agenten-Chatfenster ein: `"compile this app and launch it in a simulator"`.
*   **Ergebnis:** Der Agent analysiert das Projekt, identifiziert, dass es sich um ein iOS-Projekt handelt, findet die verfügbaren Simulatoren, kompiliert den Code und startet die App erfolgreich im iPhone-Simulator. Der gesamte Prozess ist im Chat-Fenster transparent nachvollziehbar.

**2. Code-Analyse und Hinzufügen einer neuen Funktion (im Hintergrund):**
*   **Multitasking:** Während die erste Aufgabe läuft, startet Osvaldo eine zweite, parallele Aufgabe in einem **"Background Agent"**. Dieser arbeitet in einem isolierten "Worktree" (einer separaten Kopie des Codes), um den Hauptarbeitsbereich nicht zu beeinträchtigen.
*   **Aktion:** Er gibt den Befehl: `"Can you add a setting that allows users to switch between imperial and metric system"`.
*   **Ergebnis:**
    *   Der Agent analysiert den Code, findet die relevanten Einstellungsdateien und UI-Komponenten.
    *   Er erstellt einen neuen `UnitsService`, um die Einheitenumrechnung zu verwalten.
    *   Er modifiziert die Einstellungsansicht (`SettingsView`), um einen Umschalter für "Imperial" und "Metrisch" hinzuzufügen.
    *   Nachdem die Änderungen vorgenommen wurden, wendet Osvaldo die vom Agenten erstellten Änderungen auf seinen Hauptcode an.
    *   Beim erneuten Starten der App ist die neue Funktion live: In den Einstellungen gibt es jetzt einen Umschalter, und die Anzeige wechselt erfolgreich von Meilen auf Kilometer.

---

### **Demo 2: Planungsmodus und Cloud-Delegation (Josh Spicer)**

Josh zeigt einen anderen Anwendungsfall mit seiner iOS-App **"MapCalipers"**, einem Spiel, das auf dem Transitsystem einer Stadt basiert (in diesem Fall Seattle).

**1. Implementierung eines GitHub-Issues mit dem Planungsmodus:**
*   **Szenario:** Ein Entwickler möchte eine neue Funktion implementieren, die in einem GitHub-Issue beschrieben ist.
*   **Aktion:** Josh wechselt in den **"Plan Mode"** des Agenten und gibt ihm einfach die URL des GitHub-Issues.
*   **Ergebnis:** Der Agent liest das Issue, analysiert den bestehenden Code und erstellt einen detaillierten, schrittweisen Plan zur Implementierung des Features. Der Plan umfasst:
    *   Überprüfung der Apple-Dokumentation.
    *   Entwurf des Workflows.
    *   Implementierung des neuen Tools.
    *   Erstellung des SwiftUI-Overlays.
    *   Registrierung des neuen Tools in der App.
    *   Der Agent listet auch "Weitere Überlegungen" auf, wie z.B. UI/UX-Fragen.

**2. Delegieren der Aufgabe an die Cloud:**
*   **Aktion:** Anstatt den Plan lokal auszuführen, nutzt Josh die Funktion **"Continue in Cloud"**.
*   **Ergebnis:**
    *   Die gesamte Konversation und der Kontext werden zusammengefasst und an einen **Cloud Agent** (den Copilot Coding Agent auf GitHub) delegiert.
    *   Der Cloud Agent erstellt automatisch einen neuen Branch und einen Pull Request (PR) auf GitHub.
    *   Die Arbeit wird nun asynchron auf der GitHub-Infrastruktur fortgesetzt. Der Entwickler kann seinen Laptop schließen und wird benachrichtigt, wenn der Agent die Arbeit abgeschlossen hat.
    *   Im VS Code wird die lokale Session geschlossen und durch eine neue "Cloud"-Session ersetzt, die den Status des PR anzeigt.

### **Zentrale Funktionen und Konzepte zusammengefasst**

Das Video hebt mehrere Modi und Funktionen der Agenten-Integration in VS Code hervor:

*   **Multi-Session-Management:** Die Fähigkeit, mehrere Agenten-Aufgaben (sowohl lokal als auch in der Cloud) gleichzeitig zu verwalten und zwischen ihnen zu wechseln.
*   **Hintergrund-Agent (Background Agent):** Führt Aufgaben in einer isolierten Umgebung (Git Worktree) aus, ohne den aktuellen Arbeitsstand des Entwicklers zu stören. Die Änderungen können später überprüft und übernommen werden.
*   **Cloud-Agent:** Delegiert komplexe oder langwierige Aufgaben an die GitHub-Infrastruktur, um sie asynchron auszuführen und das Ergebnis als Pull Request bereitzustellen.
*   **Planungsmodus (Plan Mode):** Ein Agent, der darauf spezialisiert ist, komplexe Aufgaben zu analysieren und detaillierte Implementierungspläne zu erstellen, bevor Code geschrieben wird.
*   **Benutzerdefinierte Agenten (Custom Agents):** Entwickler können ihre eigenen Agenten mit spezifischen Anweisungen und Fähigkeiten erstellen, indem sie einfache Markdown-Dateien definieren.

**Zusammenfassung**
Die Präsentation zeigt eindrucksvoll die nächste Stufe der KI-gestützten Entwicklung, bei der Agenten als proaktive Partner fungieren. Sie können nicht nur Code vervollständigen, sondern ganze Arbeitsabläufe von der Planung über die Implementierung bis hin zum Erstellen von Pull Requests übernehmen. Die verschiedenen Modi (lokal, Hintergrund, Cloud) bieten Entwicklern die Flexibilität, das richtige Werkzeug für jede Aufgabe zu wählen und ihre Produktivität erheblich zu steigern.