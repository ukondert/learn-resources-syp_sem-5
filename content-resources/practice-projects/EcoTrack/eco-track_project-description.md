**Projektidee:** Eine Plattform, die Schüler und Bürger dazu motiviert, Müll korrekt zu trennen und zu vermeiden. Über eine mobile App können Benutzer ihre "ökologischen Taten" (z.B. korrekt recycelter Müll, Nutzung von Mehrwegbechern) erfassen. Institutionen (Schulen, Gemeinden) können über ein Web-Dashboard Challenges erstellen und die Fortschritte ihrer Mitglieder verfolgen und belohnen. Ziel ist es eine Web-Admin App für Gemeinden und Lehrer, sowie eine Mobile App für Schüler und Bürger

*   **Bezug zur Nachhaltigkeit:** Direkte Förderung von Recycling, Müllvermeidung und bewusstem Konsumverhalten.
*   **Interesse für Jugendliche:** Gamification-Elemente (Punkte, Badges, Ranglisten), Wettbewerbscharakter zwischen Klassen oder Schulen, direkter und sichtbarer Einfluss auf die Umwelt.

**Kernkomponenten:**

1.  **Server-Backend (Spring Boot):**
    *   Verwaltet Mandanten (Schulen, Gemeinden), Benutzer, Challenges (z.B. "Sammle 100 Alu-Dosen") und erfasste "Taten".
    *   Berechnet Punkte und Ranglisten in Echtzeit.
    *   Stellt eine sichere REST-API (via `openapi.yaml` spezifiziert) für die Web- und Mobile-Frontends bereit.
    *   Implementiert die gesamte Geschäftslogik nach den Prinzipien der Clean Architecture.

2.  **Web-Frontend (Administration & Dashboard):**
    *   Für Administratoren (Lehrer, Gemeindevertreter).
    *   Erstellen und Verwalten von Mandanten und Benutzern.
    *   Anlegen und Überwachen von Recycling-Challenges und Zielen.
    *   Visualisierung der gesammelten Daten: Diagramme zu Recyclingquoten, beliebtesten Aktionen, aktivsten Benutzern/Gruppen.
    *   Verwaltung von API-Keys für die mobile App-Kommunikation.

3.  **Mobile-Frontend (Flutter, React Native o.ä.):**
    *   Für die Endbenutzer (Schüler, Bürger).
    *   Ermöglicht die einfache Erfassung von ökologischen Taten (z.B. per Scan eines QR-Codes an einem Recycling-Container, manuelle Eingabe).
    *   Anzeige des persönlichen Fortschritts, gesammelter Punkte und Badges.
    *   Anzeige von Ranglisten (individuell, Klasse, Schule).
    *   Liefert die Daten sicher (via HMAC-Signatur) an das Backend.