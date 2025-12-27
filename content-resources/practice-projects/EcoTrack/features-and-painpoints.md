# Analyse des Requirements Workshops "EcoTrack"

Dieses Dokument fasst die Ergebnisse des Workshops vom 11. Oktober 2025 zusammen. Es gliedert sich in die identifizierten Pain Points der Stakeholder, die explizit genannten Feature-Wünsche und die daraus abgeleiteten Features für die EcoTrack-Plattform.

---

## 1. Pain Points der Stakeholder

Die folgenden Probleme und Bedürfnisse wurden von den Teilnehmern geäußert und bilden die Grundlage für die Anforderungen an das System:

*   **Geringes Umweltbewusstsein & niedrige Recyclingquoten:** Die Gemeinde möchte das Bewusstsein in der Bevölkerung schärfen und die Recyclingquoten messbar erhöhen.
*   **Fehlende Daten für Berichte:** Der Gemeinde fehlen konkrete, messbare Daten für offizielle Umweltberichte und zur Darstellung des eigenen Engagements.
*   **Hoher administrativer Aufwand für Lehrkräfte:** Lehrer befürchten, dass die Verwaltung eines solchen Systems (z.B. Nutzer anlegen, Aktivitäten kontrollieren) zu aufwendig wird.
*   **Mangelnde Motivation bei Schülern:** Nachhaltigkeitsaktivitäten werden oft als "Arbeit" oder langweilig empfunden; es fehlt ein spielerischer Anreiz.
*   **Schwierige Verifikation von "guten Taten":** Aktionen wie der Verzicht auf eine Plastiktüte sind schwer nachweisbar, was zu Misstrauen und Betrugspotenzial führt.
*   **Datenschutzbedenken:** Bürger und Eltern haben große Sorge vor der Erstellung von Bewegungsprofilen und dem Missbrauch persönlicher Daten (DSGVO-Konformität).
*   **Komplexität bei materiellen Belohnungen:** Die Umsetzung von direkten finanziellen Anreizen (z.B. Reduktion von Müllgebühren, Gutscheine) ist logistisch und rechtlich sehr komplex oder unrealistisch.
*   **Fehlende praktische Integration in den Alltag:** Bestehende Mülltrennung ist eine Gewohnheit; eine neue App muss einen klaren, praktischen Mehrwert bieten, um genutzt zu werden.

---

## 2. Explizit erwähnte Features

Diese Features wurden von den Teilnehmern direkt im Gespräch vorgeschlagen und diskutiert:

*   **Mobile App Features (Endbenutzer):**
    *   **QR-Code-Scan:** Zur einfachen und verifizierbaren Erfassung von Recycling-Aktivitäten an Sammelstellen inklusive Beweisfoto mit GPS-Daten.
    *   **Manuelle Eingabe:** Für Aktionen, die nicht per QR-Code erfasst werden können (z.B. Müllvermeidung).
    *   **Sofortiges Feedback:** Visuelle Animationen und Soundeffekte nach einer erfassten Tat.
    *   **Punktesystem:** Vergabe von Punkten für jede ökologische Tat mit unterschiedlicher Wertigkeit (Recycling von Battterie zählt mehr als Recycling von Plastikflasche -> Äquivalenz zur Ökologischen Belastung)
    *   **Ranglisten:** Mehrstufige Leaderboards (persönlich, Klasse, Schule, Stadtteil).
    *   **Profil mit Badges:** Persönliches Profil, in dem Meilensteine und Auszeichnungen (Badges) gesammelt werden.
    *   **Social Sharing:** Möglichkeit, Badges und Erfolge auf Social Media zu teilen.
    *   **"Duell"-Modus:** Direkte Wettbewerbe zwischen Klassen oder Gruppen.
    *   **Nutzung von Nicknames:** Anstelle von echten Namen zur Wahrung der Anonymität.

*   **Web-Dashboard Features (Admins):**
    *   **Mandantenstruktur:** Hierarchische Verwaltung (Gemeinde > Schule > Klasse), um Zuständigkeiten abzugrenzen.
    *   **Rollen- und Rechtesystem:** Unterschiedliche Ansichten und Berechtigungen für Gemeindevertreter, Schulleiter und Lehrer.
    *   **Einfaches Nutzermanagement:** Anlegen von Gruppen (z.B. Schulklassen) über Einladungscodes statt manueller Dateneingabe.
    *   **Challenge-Erstellung:** Tool zum Definieren von Herausforderungen mit Zeitraum, Ziel und (immaterieller) Belohnung.
    *   **Statistik-Dashboard:** Visualisierung von aggregierten, anonymisierten Daten in Echtzeit (Diagramme).
    *   **Datenexport:** Möglichkeit zum Exportieren der Statistiken für Berichte.

---

## 3. Abgeleitete Features (Lösungen für Pain Points)

Diese Features ergeben sich als logische Lösungen für die oben genannten Pain Points. Sie überschneiden sich teilweise mit den explizit genannten Wünschen, sind hier aber direkt dem Problem zugeordnet.

*   **Pain Point:** Geringes Bewusstsein & Motivation
    *   **Abgeleitetes Feature:** Ein umfassendes **Gamification-Konzept**, das durch Punkte, Badges und Ranglisten (Wettbewerb) kontinuierliche Anreize schafft und die App unterhaltsam macht.

*   **Pain Point:** Fehlende Daten für Berichte
    *   **Abgeleitetes Feature:** Ein **Reporting-Modul** im Admin-Dashboard, das auf Knopfdruck anonymisierte und aggregierte Daten für Umweltberichte in einem standardisierten Format exportiert.

*   **Pain Point:** Hoher administrativer Aufwand
    *   **Abgeleitetes Feature:** Ein **Self-Service-Portal für Admins** (Lehrer, etc.), das die Verwaltung von Gruppen über Einladungscodes automatisiert und keine manuelle Pflege von Nutzerlisten erfordert.

*   **Pain Point:** Schwierige Verifikation von Taten
    *   **Abgeleitetes Feature:** Ein **gewichtetes und differenziertes Punktesystem**. Verifizierbare Aktionen (QR-Scan) geben mehr Punkte als nicht verifizierbare, auf Vertrauen basierende manuelle Eingaben. Müllvermeidung wird höher bewertet als Recycling.

*   **Pain Point:** Datenschutzbedenken
    *   **Abgeleitetes Feature:** Ein **"Privacy-by-Design"-Architektur**. Das System speichert Standortdaten nur temporär und anonymisiert zur Verbuchung der Punkte, erstellt aber keine dauerhaften Bewegungsprofile. Alle Statistiken sind grundsätzlich aggregiert und anonym. Eine transparente Datenschutzerklärung in einfacher Sprache ist Teil der App.

*   **Pain Point:** Komplexität bei materiellen Belohnungen
    *   **Abgeleitetes Feature:** Ein System, das auf **immaterielle und öffentliche Belohnungen** setzt. Dazu gehören digitale Badges, öffentliche Anerkennung (z.B. "Schule des Monats") und symbolische Preise (z.B. ein Baum für den Schulhof), die von der Gemeinde gestiftet werden.
