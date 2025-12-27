# Analyse fehlender Anforderungen: Projekt Energieverbrauchs-Optimierung

Dieses Dokument listet unklare oder fehlende Anforderungen aus der Projektdokumentation `prj_energy-optimizing.md` auf. Diese Punkte müssen mit dem Auftraggeber (Lehrer) geklärt werden, um eine erfolgreiche Umsetzung zu gewährleisten.

## 1. Allgemeine und übergreifende Anforderungen

*   **Fehlerbehandlung:** Es ist nicht spezifiziert, wie das System (Backend, Frontend, Simulator) auf Fehler reagieren soll.
    *   Welche HTTP-Statuscodes und Fehlerformate soll die API bei ungültigen Anfragen, Serverfehlern oder Authentifizierungsproblemen zurückgeben?
    *   Wie soll der Sensor-Simulator auf Netzwerkfehler oder ungültige Server-Antworten reagieren? (z.B. Retry-Logik, Intervall)
*   **Konfiguration:** Wie werden die Anwendungen konfiguriert? (z.B. Datenbank-URL, Server-Port, Logging-Level). Über Properties-Dateien, Umgebungsvariablen?
*   **Logging:** Gibt es Anforderungen an das Logging? Welche Ereignisse (z.B. API-Anfragen, Fehler, Statusänderungen) sollen in welchem Format und mit welchem Detailgrad protokolliert werden?

## 2. Mehr-Mandantenfähigkeit

*   **Mandanten-Verwaltung:** Die reine Existenz einer `mandant_id` ist spezifiziert, aber nicht der Lebenszyklus eines Mandanten.
    *   Wie werden neue Mandanten angelegt, bearbeitet oder gelöscht? Geschieht dies manuell in der Datenbank oder über eine Admin-Oberfläche im Frontend?
    *   Welche Attribute hat ein Mandant (z.B. Name, Adresse, Ansprechpartner)?

## 3. Sicherheit

*   **Frontend-Authentifizierung:**
    *   Welcher Authentifizierungsmechanismus soll genau verwendet werden (z.B. Form-Login, OAuth2, JWT)?
    *   Welche Benutzerrollen gibt es? (z.B. Super-Admin, Mandanten-Admin, Mandanten-Benutzer). Welche Berechtigungen hat jede Rolle?
    *   Wie wird die Benutzerverwaltung (Anlegen, Sperren von Benutzern) gehandhabt?
*   **API-Key-Management:**
    *   Wie genau wird ein API-Key generiert? Welche Länge und Komplexität soll er haben?
    *   Gibt es einen Prozess, um API-Keys zu erneuern oder zu sperren (z.B. bei Kompromittierung)?
*   **HMAC-Signatur:**
    *   Welche Felder der Anfrage (Payload) sollen exakt in die Berechnung der HMAC-Signatur einfließen? (z.B. Timestamp, Body-Inhalt)
    *   Wie wird der "shared secret" (der für die HMAC-Berechnung genutzt wird) sicher zwischen Server und Sensor ausgetauscht/initialisiert? Ist es der API-Key selbst?
    *   Wie wird gegen Replay-Angriffe vorgegangen? (z.B. durch einen Timestamp und ein Gültigkeitsfenster auf Server-Seite)

## 4. Sensor-Simulator (JavaFX)

*   **Simulationslogik:**
    *   Nach welcher Logik werden Temperaturwerte simuliert? (Zufallswerte in einem Bereich, Sinuskurve über den Tag, Reaktion auf die Zieltemperatur)?
    *   Soll das Sendeintervall der Messdaten fest sein oder im Simulator konfigurierbar?
*   **Zustandsanzeige:** Welche Informationen sollen im Simulator angezeigt werden? Nur die empfangene Zieltemperatur oder auch der Sendestatus, die letzte Antwort vom Server, Fehlermeldungen?

## 5. Web-Frontend

*   **Sensor-Verwaltung:**
    *   Welche Attribute hat ein Sensor neben dem API-Key? (z.B. Name, Standort/Raum, Modellbezeichnung)
*   **Zeitprogramme:**
    *   Wie ist die genaue Struktur eines Zeitprogramms? (z.B. Wochentage, Uhrzeit von/bis, zugewiesene Zieltemperatur)
    *   Kann es mehrere Zeitprogramme pro Mandant geben? Kann ein Sensor ein Standard-Zeitprogramm erben?
*   **Dashboard & Auswertung:**
    *   Wie genau wird die "akkumulierte Zeit im Toleranzband" berechnet und dargestellt? Pro Tag, Woche, Monat?
    *   Welche Interaktionsmöglichkeiten soll das Diagramm bieten (z.B. Zoom, Pan, Tooltips mit genauen Werten)?
    *   Soll ein Datenexport (z.B. als CSV) möglich sein?

## 6. Backend & API

*   **OpenAPI-Spezifikation:** Die Anforderung ist, eine `openapi.yaml` zu erstellen. Es fehlen jedoch die konkreten Endpunkte, ihre Methoden (GET, POST, etc.), die Request-Bodies und die Response-Strukturen. Diese müssen auf Basis der funktionalen Anforderungen definiert werden. Beispiele für zu klärende Endpunkte:
    *   `POST /sensordata`: Endpunkt für den Sensor, um Messwerte zu senden.
    *   Admin-Endpunkte für die Verwaltung von Mandanten, Sensoren, Benutzern und Zeitprogrammen.
*   **Datenbankschema:** Ein relationales Datenbankschema ist nicht definiert. Die Tabellen, Spalten, Datentypen und Beziehungen (z.B. zwischen Mandanten, Sensoren und Messwerten) müssen entworfen werden.
*   **Geschäftslogik-Details:**
    *   Was passiert, wenn ein Sensor keine Daten sendet? Gibt es einen Timeout, nach dem der Sensor als "offline" markiert wird?
    *   Wie wird die "optimierte Steuerungsanweisung" genau berechnet? Ist es nur die Rückgabe der im Zeitprogramm definierten Zieltemperatur oder steckt eine komplexere Logik dahinter?
