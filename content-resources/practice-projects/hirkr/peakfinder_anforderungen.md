# Analyse der Anforderungen für die "PeakFinder" App

Basierend auf dem Requirements-Interview mit dem Key-User Alex wurden die folgenden Punkte identifiziert.

---

## 1. Pain Points (Aktuelle Probleme des Nutzers)

Dies sind die Frustrationen und Schwierigkeiten, die der Nutzer mit den derzeitigen Lösungen und Prozessen bei der Tourenplanung und -durchführung hat.

*   **Schwierige Partnersuche:** Es ist sehr schwierig, Wanderpartner zu finden, die ein ähnliches Fitness- und Fähigkeitslevel haben und zur gleichen Zeit verfügbar sind.
*   **Fragmentierte Werkzeuge:** Der Nutzer muss zwischen verschiedenen Apps und Webseiten wechseln (z.B. Bergfex zur Planung, andere Tools zur Kommunikation), was umständlich ist.
*   **Hoher Aufwand beim Teilen:** Das Teilen eigener Tourenerfahrungen (Kommentare, Fotos) auf bestehenden Plattformen ist dem Nutzer zu aufwändig und wird daher selten gemacht.
*   **Mangel an Vertrauen/Sicherheit:** Es gibt keine einfache Möglichkeit, die Zuverlässigkeit oder das Verhalten potenzieller, unbekannter Tourenpartner im Voraus einzuschätzen.
*   **Fehlende soziale Vernetzung:** Bestehende Touren-Apps sind oft reine Datenbanken und fördern nicht die soziale Interaktion und Vernetzung basierend auf gemeinsamen Erlebnissen.

---

## 2. Feature-Wünsche (Explizite Anforderungen des Nutzers)

Dies sind die Funktionen, die der Nutzer während des Interviews direkt genannt und sich für die neue App gewünscht hat.

*   **Kernfunktion Partnervermittlung ("Tinder für Bergsteiger"):**
    *   **Tour-zentrierte Suche:** Eine Funktion, um für eine bereits geplante Tour passende Begleiter zu finden ("Ich will DIESE Tour machen, wer kommt mit?").
    *   **Personen-zentrierte Suche:** Eine Funktion, um proaktiv nach interessanten Personen in der Umgebung zu suchen, um zukünftige Touren zu planen (z.B. über ein Swiping-System).

*   **Aussagekräftige Nutzerprofile:**
    *   Selbsteinschätzung von **Kondition** (z.B. Höhenmeter/Stunde) und **technischen Fähigkeiten** (z.B. Schwindelfreiheit, Klettersteig-Niveau).
    *   Angabe der bevorzugten **Tourenarten** (z.B. Almwanderung, Hochtour).
    *   Eine **Historie abgeschlossener Touren** als aussagekräftiger Erfahrungsnachweis.

*   **Integrierte Tourenplanung & -durchführung:**
    *   Eine große **Touren-Datenbank** mit guten Filtermöglichkeiten (ähnlich Bergfex).
    *   Anzeige von **Höhenprofilen** und Bereitstellung von **GPS-Tracks**.
    *   **Offline-Karten** als essenzielles Premium-Feature.
    *   **GPS-Tracking** zur Aufzeichnung der eigenen Tour.

*   **Soziale & Kommunikations-Features:**
    *   Eine integrierte **Chat-Funktion** für Einzel- und Gruppenchats zur Detailabsprache.
    *   Ein **Reputations- oder Bewertungssystem**, um Vertrauen zwischen Nutzern aufzubauen.
    *   Möglichkeit, nach einer Tour die **Erfahrung zu teilen** (Fotos, Kommentare).
    *   **Markieren von Tourenpartnern** bei einer abgeschlossenen Tour.
    *   Die geteilte Tour erscheint im eigenen Profil und baut so ein **soziales Netzwerk auf Basis gemeinsamer Erlebnisse** auf.

*   **Monetarisierung & Qualität:**
    *   Bereitschaft, für eine **werbefreie App mit Premium-Funktionen** (wie Offline-Karten) zu bezahlen.

---

## 3. Abgeleitete Features

Diese Features wurden nicht explizit vom Nutzer genannt, lassen sich aber logisch aus seinen Pain Points und Wünschen ableiten, um ein stimmiges Gesamtkonzept zu schaffen.

*   **Intelligentes Matchmaking-System:** Ein Algorithmus, der basierend auf den detaillierten Nutzerprofilen (Kondition, Fähigkeiten, Tourenhistorie) proaktiv passende Partner vorschlägt.
*   **Automatisierte Tour-Vorschläge:** Die App könnte basierend auf dem Nutzerprofil und früheren Aktivitäten passende Touren und potenzielle Partner dafür vorschlagen.
*   **Kalender-Integration:** Eine Funktion, um die eigene Verfügbarkeit anzugeben und diese mit den Verfügbarkeiten potenzieller Partner abzugleichen.
*   **Sicherheits-Features (Erweitert):**
    *   Möglichkeit, den Live-Standort während einer Tour mit Notfallkontakten zu teilen.
    *   Check-in/Check-out-System für Touren.
*   **Gamification-Elemente:** Einführung von Badges oder Auszeichnungen für erreichte Ziele (z.B. "10.000 Höhenmeter bezwungen", "Gipfelstürmer"), um die Motivation zu steigern.
*   **Vereinfachtes Teilen von Erlebnissen:** Ein geführter, einfacher Prozess direkt nach Tourende, der das Hochladen von Fotos und das Hinterlassen von Kommentaren mit wenigen Klicks ermöglicht (z.B. durch automatische Erkennung des Tour-Endes).
