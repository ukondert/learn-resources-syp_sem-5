## Unterschied zwischen kl. und großen SW-Projekten

Ich erläutere dir den Unterschied **klassisch** und **im Kontext moderner, KI-gestützter Entwicklung**.

---

## 🧩 **1. Klassische Unterscheidung: Kleine vs. große Softwareprojekte**

| Kriterium                     | **Kleine Softwareprojekte**                         | **Große Softwareprojekte**                                                       |
| ----------------------------- | --------------------------------------------------- | -------------------------------------------------------------------------------- |
| **Teamgröße**                 | 1–5 Personen                                        | 10–100+ Personen (mehrere Teams)                                                 |
| **Projektumfang**             | Wenige Module, überschaubarer Funktionsumfang       | Komplexe Systeme mit vielen Komponenten und Schnittstellen                       |
| **Dauer**                     | Tage bis wenige Monate                              | Monate bis Jahre                                                                 |
| **Komplexität**               | Gering – klare Anforderungen, wenige Abhängigkeiten | Hoch – viele Abhängigkeiten, mehrere Teilsysteme                                 |
| **Kommunikation**             | Direkt, informell                                   | Strukturiert, mit Rollen und Prozessen (Scrum, Kanban, PM-Tools)                 |
| **Dokumentation**             | Minimal, oft in Code und Readme                     | Umfangreich (Pflichtenhefte, UML, Architekturdokumente, QA-Berichte)             |
| **Prozessmodell**             | Agile Light, ad hoc oder Rapid Prototyping          | Strukturierte Modelle (Scrum@Scale, SAFe, V-Modell, Wasserfall, hybride Modelle) |
| **Test & Qualitätssicherung** | Manuell oder einfach automatisiert                  | Automatisiert, mit CI/CD, QA-Teams, Review-Prozessen                             |
| **Risikomanagement**          | Kaum notwendig                                      | Zwingend erforderlich (Change-, Risk- und Stakeholder-Management)                |

---

## 🤖 **2. Veränderung durch Künstliche Intelligenz (KI)**

Der Einsatz von KI-Tools (z. B. **GitHub Copilot, ChatGPT, CodeWhisperer, SonarLint mit KI, Testgeneration mit GPT**, etc.) **verändert** die Grenzen zwischen kleinen und großen Projekten deutlich.

### ⚙️ **Auswirkungen auf kleine Projekte**

**Vorteile:**

* **Produktivitätsschub:** Einzelpersonen oder kleine Teams können heute Code auf Enterprise-Niveau erzeugen.
* **Weniger technische Hürden:** KI unterstützt bei Architektur, Syntax, API-Verwendung und Tests.
* **Automatisierte Dokumentation:** KI kann Spezifikationen und Codekommentare generieren.
* **Rapid Prototyping:** KI ermöglicht extrem schnelle MVP-Erstellung.

**Aber:**

* KI ersetzt **nicht** die Architekturplanung oder das **Systemverständnis**.
* Risiken: **Abhängigkeit** von Tools, **fehlende Qualitätskontrolle**, **Datenschutzfragen** bei Cloud-KI.

➡️ **Fazit:** Kleine Projekte werden durch KI **leistungsfähiger und professioneller**, benötigen aber neue Kompetenzen im Umgang mit generiertem Code und Lizenzthemen.

---

### 🧠 **Auswirkungen auf große Projekte**

**Vorteile:**

* KI kann **Projektmanagement und Testprozesse** unterstützen: automatische Ticketanalyse, Bug-Klassifikation, Testdatengenerierung.
* **Entwicklungszeit sinkt**, besonders bei Routine- oder Integrationsaufgaben.
* **Automatisierte Code Reviews** und **CI/CD-Monitoring** werden zunehmend KI-basiert.

**Aber:**

* Große Projekte benötigen weiterhin **klare Strukturen, Rollen und Abstimmungen**.
* KI muss **in bestehende Prozesse integriert** werden (Governance, Compliance).
* **Erklärbarkeit und Nachvollziehbarkeit** von KI-generiertem Code sind kritisch.

➡️ **Fazit:** KI beschleunigt große Projekte, **ändert aber nicht deren Komplexität** — sie verschiebt nur den Aufwand von „Entwicklung“ zu „Überwachung & Qualitätssicherung“.

---

## 📊 **3. Vergleich mit KI-Einfluss**

| Dimension                            | Früher                      | Heute (mit KI)                                                             |
| ------------------------------------ | --------------------------- | -------------------------------------------------------------------------- |
| **Leistungsfähigkeit kleiner Teams** | begrenzt                    | stark gestiegen durch KI-Assistenten                                       |
| **Notwendigkeit großer Teams**       | hoch bei komplexen Systemen | etwas geringer – KI unterstützt Routinearbeiten                            |
| **Wert von Architektur & Planung**   | zentral                     | weiterhin zentral (KI kann keine Systemarchitektur „verstehen“)            |
| **Testing-Aufwand**                  | hoch, manuell               | automatisiert durch KI-generierte Tests                                    |
| **Dokumentation**                    | zeitaufwändig               | KI kann automatisch Entwürfe und technische Doku erstellen                 |
| **Fehleranfälligkeit**               | menschlich bedingt          | KI kann Fehler erkennen, aber auch neue einführen                          |
| **Rollen im Projekt**                | Entwicklerzentriert         | neue Rollen: „Prompt Engineer“, „KI-Reviewer“, „Ethik-/Compliance-Analyst“ |

---

## 💡 **4. Didaktisches Fazit für den Unterricht**

> 🔹 **Kleine Projekte**: profitabel durch KI-Unterstützung – Entwickler:innen können mehr Verantwortung übernehmen.
> 🔹 **Große Projekte**: profitieren von KI in der **Effizienz**, nicht in der **Komplexitätsreduktion**.
> 🔹 KI ist **kein Ersatz** für Projektmanagement, Architektur oder Teamkommunikation – sie ist ein **Werkzeug zur Automatisierung**.

---

### 📘 **Kurzdefinition**

> Der Hauptunterschied zwischen kleinen und großen Softwareprojekten liegt in der **Komplexität, Teamgröße und Notwendigkeit formaler Prozesse**.
> Durch KI verschwimmt diese Grenze: **Kleine Projekte werden professioneller, große Projekte effizienter** –
> aber **Struktur, Qualitätssicherung und menschliche Verantwortung bleiben entscheidend.**

## Fehler in der klassischen und ki-gestützten SW-Entwicklung

Im Folgenden findest du eine **strukturiert validierte Übersicht** typischer Fehler in der **klassischen Softwareentwicklung** und deren **moderne Varianten im KI-Zeitalter**.

---

## 🧩 **1. Klassische Softwareentwicklung – typische Fehlerquellen**

| Kategorie                             | Typische Fehler                                   | Erklärung / Auswirkung                                                                         |
| ------------------------------------- | ------------------------------------------------- | ---------------------------------------------------------------------------------------------- |
| **Anforderungsanalyse**               | ❌ Unklare oder sich widersprechende Anforderungen | Fehlende oder unpräzise Anforderungen führen zu Fehlentwicklungen („Building the wrong thing“) |
|                                       | ❌ Fehlende Einbindung der Stakeholder             | Nutzerbedürfnisse werden nicht berücksichtigt, Akzeptanzprobleme                               |
| **Planung & Architektur**             | ❌ Fehlende Gesamtarchitektur / Big Picture        | System wächst unkontrolliert – „Spaghetti-Code“                                                |
|                                       | ❌ Unrealistische Zeitplanung                      | Projektverzögerungen, Qualitätsverlust                                                         |
| **Implementierung**                   | ❌ Fehlende Codekonventionen                       | Schwer wartbarer Code, fehlende Lesbarkeit                                                     |
|                                       | ❌ „Copy-Paste-Programming“                        | Fehler werden multipliziert, keine Wiederverwendung                                            |
| **Testing & Qualitätssicherung**      | ❌ Zu spätes oder unzureichendes Testen            | Fehler werden erst spät erkannt, hohe Kosten                                                   |
|                                       | ❌ Fehlende Testautomatisierung                    | Manuelle Tests zu aufwändig, Regressionen bleiben unentdeckt                                   |
| **Kommunikation & Projektmanagement** | ❌ Fehlende Abstimmung zwischen Teams              | Doppelte Arbeit, Integrationsprobleme                                                          |
|                                       | ❌ Kein Risikomanagement                           | Überraschungen in späten Phasen                                                                |
| **Dokumentation & Übergabe**          | ❌ Keine oder veraltete Dokumentation              | Wissen geht verloren, Wartung erschwert                                                        |
|                                       | ❌ Keine Nachvollziehbarkeit von Änderungen        | Fehlerquellen schwer identifizierbar                                                           |

> 💡 **Kernaussage:**
> Die meisten Fehler in klassischen Projekten entstehen **nicht durch Technik**, sondern durch **Kommunikation, Planung und fehlende Qualitätssicherung**.

---

## 🤖 **2. Moderne KI-unterstützte Softwareentwicklung – neue und veränderte Fehlerquellen**

Der Einsatz von KI (z. B. GitHub Copilot, ChatGPT, Codeium, Test-Generatoren, Requirements-Analysetools) **verändert** die Fehlerlandschaft:
Einige klassische Fehler werden **reduziert**, aber neue **technische und ethische Risiken** entstehen.

| Kategorie                        | Typische Fehler                                        | Erklärung / Auswirkung                                                                             |
| -------------------------------- | ------------------------------------------------------ | -------------------------------------------------------------------------------------------------- |
| **Anforderungsanalyse mit KI**   | ⚠️ Zu großes Vertrauen in KI-generierte Anforderungen  | KI kann Missverständnisse in natürlichsprachigen Anforderungen verstärken                          |
|                                  | ⚠️ Fehlende Validierung von KI-Vorschlägen             | Ungeprüfte Übernahme führt zu falschen Systemzielen                                                |
| **Architektur & Design**         | ⚠️ Fehlendes Architekturverständnis                    | KI kann Code, aber keine übergreifenden Architekturentscheidungen treffen                          |
|                                  | ⚠️ Überoptimierung einzelner Module                    | KI-Code löst Teilprobleme gut, aber ohne Gesamtsicht (z. B. Performance- oder Sicherheitsprobleme) |
| **Implementierung**              | ⚠️ „Blindes Vertrauen“ in KI-Code                      | Entwickler übernehmen Vorschläge ohne Prüfung – mögliche Sicherheitslücken oder Lizenzverstöße     |
|                                  | ⚠️ Urheberrechtsverletzungen durch KI-generierten Code | KI kann Code aus Trainingsdaten reproduzieren – unklare Lizenzsituation                            |
| **Testing & Qualitätssicherung** | ⚠️ Fehlendes Testverständnis                           | KI generiert Tests, aber ohne logische Testabdeckung                                               |
|                                  | ⚠️ Keine Überwachung der Testqualität                  | KI-Tests decken nur Standardfälle ab, nicht Randfälle                                              |
| **Daten & Modelle**              | ⚠️ Schlechte oder verzerrte Trainingsdaten             | KI-Vorschläge können diskriminierende oder fehlerhafte Logiken enthalten                           |
|                                  | ⚠️ Fehlende Reproduzierbarkeit                         | KI-Ausgaben können sich bei gleichen Eingaben ändern (stochastisches Verhalten)                    |
| **Team & Kommunikation**         | ⚠️ Reduzierte Kommunikation im Team                    | Entwickler verlassen sich auf KI statt auf kollegiale Code-Reviews                                 |
|                                  | ⚠️ Kompetenzverlust („KI macht das schon“)             | Entwickler verlieren Fachwissen, wenn sie KI blind vertrauen                                       |
| **Ethik & Sicherheit**           | ⚠️ Fehlende Nachvollziehbarkeit („Black Box Code“)     | Schwer nachvollziehbar, warum KI bestimmte Entscheidungen trifft                                   |
|                                  | ⚠️ Datenschutzprobleme bei Cloud-KI                    | Projektcode wird an externe Server übermittelt – DSGVO-Risiko                                      |

> 💡 **Kernaussage:**
> KI **reduziert Routinefehler**, aber **erzeugt neue Risiken** in Bezug auf **Vertrauen, Verantwortung und Transparenz**.

---

## ⚖️ **3. Vergleich: klassische vs. KI-unterstützte Fehler**

| Bereich            | Klassische Entwicklung                            | KI-unterstützte Entwicklung                                |
| ------------------ | ------------------------------------------------- | ---------------------------------------------------------- |
| **Fehlerursache**  | Menschliche Unachtsamkeit, Kommunikationsprobleme | Fehlende Kontrolle oder Verständnis über KI-Ergebnisse     |
| **Schwerpunkt**    | Planung & Testfehler                              | Validierung & ethische Risiken                             |
| **Typischer Satz** | „Wir haben zu spät getestet.“                     | „Wir haben der KI zu sehr vertraut.“                       |
| **Gegenmaßnahme**  | Prozessdisziplin, Review-Kultur                   | KI-Governance, Validierungsprozesse, menschliche Kontrolle |
| **Lernbedarf**     | Projektorganisation                               | Datenkompetenz & kritisches Denken                         |

---

## 🧠 **4. Fazit**

> **In der klassischen Softwareentwicklung** liegen Fehler meist in **Kommunikation, Planung und fehlender Qualitätssicherung**.
>
> **In der modernen, KI-gestützten Entwicklung** entstehen Fehler durch **mangelnde Kontrolle und unkritische Nutzung von KI-generierten Ergebnissen**.
>
> Die Herausforderung verschiebt sich also **von „Fehlervermeidung durch Planung“ zu „Fehlervermeidung durch Kontrolle der KI“**.

---

## 📘 **Didaktischer Merksatz für Lernende**

> 🔹 **Früher:** „Plane zuerst, sonst baust du das Falsche.“
> 🔹 **Heute:** „Prüfe, was die KI baut – sie weiß nicht, was richtig ist.“

