# Transkript: Requirements Workshop für "Urban Bloom"

**Projekt:** Urban Bloom – Citizen-Science-Plattform zur Erfassung von Stadtgrün
**Datum:** 13. Oktober 2025
**Teilnehmer:**
*   **Markus (Moderator):** Projektleiter
*   **Herr Schmidt (Mitarbeiter Grünflächenamt):** Der "Daten-Kunde"
*   **Frau Dr. Vogel (Biologielehrerin):** Die "Multiplikatorin"
*   **Jonas (Technikaffiner Schüler):** Der "Endnutzer"
*   **Herr Eiche (Vertreter Naturschutzinitiative):** Der "fachliche Experte"

---

### **(Start des Transkripts)**

**Markus (Moderator):** "Guten Morgen zusammen und herzlich willkommen zum Workshop für unser Projekt 'Urban Bloom'. Ich freue mich, dass wir heute diese Expertenrunde zusammenbekommen haben. Das Ziel ist, eine App zu konzipieren, mit der wir alle gemeinsam das Grün in unserer Stadt erfassen und besser verstehen können. Wir wollen heute die Anforderungen aus allen wichtigen Blickwinkeln sammeln.

Lassen Sie uns direkt einsteigen. Herr Schmidt, aus Sicht der Stadt, welches Problem soll 'Urban Bloom' für Sie lösen?"

---

### **Thema 1: Der Bedarf der Stadt (Daten-Kunde)**

**Herr Schmidt (Grünflächenamt):** "Guten Morgen. Unser größtes Problem ist, dass unser Baumkataster veraltet und lückenhaft ist. Wir wissen oft nicht genau, wo welche Bäume stehen und in welchem Zustand sie sind. Gerade mit den immer heißeren Sommern ist die Frage 'Welcher Baum braucht dringend Wasser?' entscheidend. Wir erhoffen uns eine dynamische, lebendige Karte unseres Stadtgrüns."

**Markus:** "Was für Daten wären für Sie konkret am wichtigsten, wenn ein Schüler wie Jonas einen Baum erfasst?"

**Herr Schmidt:** "Das A und O ist die **exakte GPS-Position**. Dann brauchen wir zwingend ein **Foto**, um den Baum zu verifizieren. Wichtig sind außerdem: die **Baumart**, eine grobe Einschätzung des **Zustands** – vielleicht eine einfache Skala wie 'gesund', 'braucht Pflege', 'krank' – und idealerweise eine Schätzung des **Stammumfangs** oder der Höhe. Wenn wir diese Daten hätten und auf einer Karte filtern könnten, wäre das eine Revolution für unsere Arbeit. Ein Klick auf 'Zeige alle kranken Linden' würde uns Tage an manueller Suche ersparen."

**Markus:** "Und für das Web-Dashboard? Was sind da die Wünsche?"

**Herr Schmidt:** "Eine interaktive Karte ist Pflicht. Darauf müssen wir die erfassten Punkte sehen und anklicken können, um die Details zu sehen. Die Filterfunktion ist, wie gesagt, zentral. Und ganz wichtig: ein **Daten-Export**, am besten als CSV oder GeoJSON, damit wir die Daten in unseren professionellen GIS-Systemen weiterverarbeiten können."

---

### **Thema 2: Die Motivation der Nutzer (Endnutzer & Pädagogik)**

**Markus:** "Danke, Herr Schmidt. Das ist sehr klar. Jonas, jetzt zu dir. Du bist draußen mit deinem Handy. Was muss die App können, damit du sie gerne nutzt?"

**Jonas (Schüler):** "Sie muss schnell sein und Spaß machen. Ich will nicht 20 Felder ausfüllen. Am besten: App öffnen, GPS findet mich, ich mache ein Foto, wähle aus einer Liste mit Bildern die Baumart aus – ich kenne ja nicht alle Namen – und klicke auf 'speichern'. Fertig. Wenn das länger als 30 Sekunden dauert, verliere ich die Lust."

**Markus:** "Und was würde dich motivieren, mehr als nur einen Baum zu erfassen?"

**Jonas:** "Gamification! Wenn ich für jeden Baum Punkte bekomme und es eine **Rangliste** für meine Klasse oder die ganze Schule gibt, dann entsteht ein Wettbewerb. Das wäre cool. Oder wenn ich **Badges** sammeln kann, wie 'Buchen-Entdecker' oder '50-Bäume-Meister'. Und ich will auf der Karte sehen, welche Bäume ich selbst erfasst habe. Das ist dann mein Beitrag."

**Frau Dr. Vogel (Lehrerin):** "Das ist ein exzellenter Punkt, Jonas. Aus pädagogischer Sicht ist genau diese sichtbare Mitgestaltung der Schlüssel. Ich kann mir vorstellen, 'Urban Bloom' als Projekt in meinem Biologie-Unterricht zu nutzen. Die Schüler könnten in Gruppen losziehen und ein bestimmtes Viertel kartieren. Dafür muss die App aber auch 'laien-tauglich' sein. Die Baumauswahl über Bilder, wie Jonas vorschlug, ist essenziell. Wir könnten keine lateinischen Namen abfragen."

**Markus:** "Frau Dr. Vogel, wie stellen Sie sich die Anbindung an die Schule vor? Brauchen Sie als Lehrerin eine spezielle Funktion?"

**Frau Dr. Vogel:** "Eine einfache Möglichkeit, **Schulklassen als Gruppen** anzulegen, wäre fantastisch. Dann könnte ich die Leistung der Klasse im Dashboard sehen und bewerten. Es braucht keine komplexen Verwaltungsfunktionen, nur eine simple Gruppenzuordnung."

---

### **Thema 3: Die Qualität der Daten (Fachlicher Experte)**

**Markus:** "Verstehe. Wir brauchen also einfache Datenerfassung, aber Herr Schmidt braucht verlässliche Daten. Herr Eiche, Sie sind der Experte für Ökologie. Wie stellen wir sicher, dass die gesammelten Daten auch wissenschaftlich wertvoll sind und nicht nur ein Spiel?"

**Herr Eiche (Naturschutzinitiative):** "Das ist die zentrale Herausforderung bei Citizen Science. Wir können die Genauigkeit erhöhen, indem wir die Eingaben plausibilisieren. Zum Beispiel sollte die App bei der Baumart nur die vorschlagen, die in unserer Region auch heimisch sind. Der wichtigste Mechanismus ist aber eine **Validierungsfunktion**. Ein von Jonas erfasster Baum sollte anfangs als 'unbestätigt' markiert sein."

**Markus:** "Und wer bestätigt die Daten?"

**Herr Eiche:** "Dafür könnten wir ein **Zwei-Augen-Prinzip** einführen. Wenn ein zweiter Nutzer am selben Baum eine ähnliche Erfassung macht, wird der Punkt 'wahrscheinlich'. Die endgültige Bestätigung könnte dann durch 'Power-User' erfolgen – zum Beispiel Mitglieder meiner Initiative oder Frau Dr. Vogel, denen wir im System erweiterte Rechte geben. Diese Experten könnten durch die unbestätigten Meldungen gehen und sie per Klick freigeben. Das wäre eine Art 'Peer-Review'-Prozess."

**Jonas:** "Bekomme ich dann eine Nachricht, wenn mein Baum bestätigt wurde? Das wäre auch eine coole Motivation!"

**Herr Eiche:** "Genau. Positives Feedback ist entscheidend. Außerdem sollten wir bei der Zustandserfassung klare Hilfestellungen geben. Statt nur 'krank' könnten wir bebilderte Optionen anbieten: 'viele trockene Äste', 'sichtbarer Pilzbefall', 'Rindenschäden'."

---

### **Zusammenfassung und nächste Schritte**

**Markus:** "Hervorragend. Ich fasse die Kernanforderungen zusammen:

*   **Mobile App (für die 'Citizen Scientists'):**
    *   Extrem einfache Erfassung: GPS-Automatik, Foto-Upload, bildgestützte Auswahlmenüs.
    *   Gamification: Punkte, Badges und Ranglisten (individuell und für Gruppen/Klassen).
    *   Persönliche Karte mit eigenen Beiträgen.
    *   Hilfestellungen bei der Dateneingabe (z.B. bebilderte Zustandsoptionen).

*   **Web-Dashboard (für Stadt & Experten):**
    *   Interaktive Karte mit Filter- und Suchfunktionen.
    *   Detaillierte Ansicht für jeden Datenpunkt.
    *   Daten-Export (CSV, GeoJSON).
    *   Nutzer- und Gruppenverwaltung (z.B. für Schulklassen).
    *   **Validierungs-Workflow:** Ein Dashboard für Experten ('Power-User'), um neue Einträge zu prüfen und freizugeben.

*   **Datenmodell:**
    *   Jeder Datenpunkt hat einen Status (z.B. 'unbestätigt', 'bestätigt').
    *   Zu erfassende Felder: GPS, Foto, Baumart, Zustand (detailliert), optionale Schätzungen (Größe).

**Markus:** "Das gibt uns eine sehr solide Grundlage. Ich werde dieses Protokoll aufbereiten und in ein Anforderungsdokument gießen. Der nächste Schritt wäre, auf dieser Basis erste Entwürfe der App-Oberfläche zu gestalten.

Vielen Dank für Ihre Zeit und die unglaublich wertvollen Einblicke!"

**(Ende des Transkripts)**
