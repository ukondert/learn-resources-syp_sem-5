# Epics & User Story Map für "hirkr"

Basierend auf dem Requirements-Workshop vom 13. Oktober 2025.

## 1. Epics

Die folgenden Epics fassen die Hauptfunktionsbereiche der "hirkr"-App zusammen, basierend auf den Bedürfnissen der Stakeholder.

1.  **Epic: Vertrauenswürdiges Nutzerprofil**
    *   **Beschreibung:** Umfasst alle Funktionen, die ein aussagekräftiges und verlässliches Profil eines Nutzers erstellen. Der Fokus liegt auf der Abbildung von tatsächlicher Erfahrung und Zuverlässigkeit, um Fehleinschätzungen zu minimieren.

2.  **Epic: Intelligentes Matching & Entdecken**
    *   **Beschreibung:** Das Herzstück der App. Dieses Epic deckt die verschiedenen Wege ab, wie Nutzer zueinander finden können – sei es über konkrete Tourenpläne oder über gemeinsame Interessen und Fähigkeiten. Ein Kompatibilitäts-Check ist hierbei zentral.

3.  **Epic: Kollaborative Tourenplanung & -organisation**
    *   **Beschreibung:** Beinhaltet alle Werkzeuge, die eine Gruppe von der ersten Idee bis zum Start der Tour benötigt. Dies umfasst die Detailplanung, die Kommunikation und die Koordination innerhalb der Gruppe.

4.  **Epic: Aktive Sicherheits-Features**
    *   **Beschreibung:** Bündelt alle proaktiven Funktionen, die die Sicherheit der Nutzer vor und während einer Tour erhöhen. Die App agiert hier nicht nur als Vermittler, sondern als unterstützender Begleiter.

5.  **Epic: Community & Vertrauensbildung**
    *   **Beschreibung:** Umfasst alle sozialen Mechanismen, die das Vertrauen innerhalb der Community stärken und eine verlässliche Zusammenarbeit fördern, wie z.B. Bewertungen und Verifizierungen.

---

## 2. User Story Map

Diese Story Map gliedert die User Stories entlang der User Journey und priorisiert sie für die Entwicklung in logische Releases.

| User Activity | **Profil erstellen & Vertrauen aufbauen** | **Touren & Partner finden** | **Tour organisieren & vorbereiten** | **Tour sicher durchführen** |
| :-------------- | :---------------------------------------- | :-------------------------- | :---------------------------------- | :--------------------------- |
| **MVP**         |                                           |                             |                                     |                              |
|                 | **Als sicherheitsbewusster Nutzer** möchte ich einen Notfallkontakt in meinem Profil hinterlegen, damit im Ernstfall jemand informiert wird. | **Als erfahrener Alpinist (Lena)** möchte ich eine Tour mit klaren Anforderungen (z.B. SAC-Skala T4) erstellen, um nur passende Partner anzuziehen. | **Als Touren-Organisator (Markus)** möchte ich für jede Tour einen eigenen Chat haben, um die Kommunikation übersichtlich zu halten und wichtige Infos (Treffpunkt, Zeit) anpinnen zu können. | **Als Wanderer** möchte ich in der App einen gut sichtbaren Notfall-Button haben, der meinen Standort anzeigt und den lokalen Bergrettungs-Notruf wählt. |
|                 | **Als Nutzer** möchte ich ein Touren-Logbuch manuell pflegen können, um meine bisherigen Erfahrungen zu dokumentieren. | **Als Nutzer** möchte ich nach einer erstellten Tour suchen und mich dafür bewerben können, um an geplanten Aktivitäten teilzunehmen. | **Als Touren-Teilnehmer** möchte ich in einer Ausrüstungs-Checkliste sehen, was ich für die Tour benötige. | **Als Touren-Organisator (Markus)** möchte ich nach einer Tour einfach bewerten können, ob ein Teilnehmer erschienen ist oder nicht, um die Zuverlässigkeit in der Community zu fördern. |
|                 | **Als Einsteiger (Tom)** möchte ich in meinem Profil meine Interessen und mein allgemeines Fitnesslevel angeben können, um Gleichgesinnte zu finden. | **Als Touren-Organisator (Markus)** möchte ich die Profile von Bewerbern einsehen und sie für meine Tour bestätigen oder ablehnen können. | **Als Gruppenmitglied** möchte ich über eine einfache Umfragefunktion im Chat Fahrgemeinschaften organisieren können. | **Als Nutzer** muss ich vor dem Beitritt zu einer Tour einen klaren Haftungsausschluss bestätigen. |
|                 | | **Als Nutzer** möchte ich eine Warnung sehen, wenn meine im Profil hinterlegten Fähigkeiten nicht zu den Anforderungen einer Tour passen. | | |
| **Release 2.0** |                                           |                             |                                     |                              |
|                 | **Als erfahrener Alpinist (Lena)** möchte ich mein Profil mit meinem Fitness-Tracker (z.B. Garmin) verknüpfen, um meine Aktivitäten automatisch und verifizierbar zu protokollieren. | **Als Einsteiger (Tom)** möchte ich einen "Entdecken"-Bereich haben, in dem ich Profile von Nutzern in meiner Nähe basierend auf Interessen filtern kann, auch ohne konkreten Tourenplan. | **Als erfahrener Alpinist (Lena)** möchte ich einen GPX-Track für eine Tour importieren oder auf einer Karte zeichnen können, damit die Route für alle klar ist. | **Als sicherheitsbewusster Nutzer** möchte ich vor einer Tour "einchecken" und danach "auschecken", damit bei ausbleibendem Check-out mein Notfallkontakt informiert werden kann. |
|                 | **Als sicherheitsbewusster Nutzer (Stefan)** möchte ich die Möglichkeit haben, meine Identität einmalig verifizieren zu lassen, um das Vertrauen in der Community zu erhöhen. | **Als erfahrener Alpinist (Lena)** möchte ich einen "Kompatibilitäts-Score" sehen, der mir anzeigt, wie gut ein potenzieller Partner basierend auf Erfahrung und Tempo zu mir passt. | **Als Touren-Planer** soll die App automatisch Wetter- und Lawinenwarnungen für die geplante Region und den Zeitraum anzeigen. | **Als Nutzer** möchte ich nach einer Tour meinen Partner anhand von Tags bewerten können (z.B. 'gut vorbereitet', 'zuverlässig', 'gutes Tempo'). |
|                 | | **Als Einsteiger (Tom)** möchte ich einen Inspirations-Feed mit anfängerfreundlichen, offiziellen Tourenvorschlägen in meiner Nähe erhalten. | | |
| **Zukunft**     |                                           |                             |                                     |                              |
|                 | **Als ambitionierter Nutzer** möchte ich offizielle Zertifikate (z.B. vom Alpenverein) hochladen können, um ein verifiziertes Fähigkeits-Level zu erreichen. | **Als Premium-Nutzer** möchte ich für die App bezahlen, um erweiterte Features zu nutzen und die Community ernster zu gestalten. | **Als erfahrener Alpinist (Lena)** soll die App die geschätzte Gehzeit für eine Tour basierend auf meinem persönlichen, erlernten Tempo berechnen. | |
|                 | **Als Community-Mitglied** möchte ich Badges für besondere Leistungen erhalten (z.B. '10 Touren organisiert', '5000 Höhenmeter im Monat'). | | | |
