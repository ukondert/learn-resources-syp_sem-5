# Transkript: Requirements Workshop für "RideGreen"

**Projekt:** RideGreen – Eine geschlossene Carpooling-Plattform für Schulen.
**Datum:** 13. Oktober 2025
**Teilnehmer:**
*   **Anna (Moderatorin):** Projektleiterin, verantwortlich für die Anforderungserhebung.
*   **Leo (Schüler-Fahrer):** 18 Jahre, Oberstufenschüler mit Führerschein.
*   **Mia (Schülerin-Mitfahrerin):** 14 Jahre, Mittelstufenschülerin.
*   **Frau Huber (Schul-Administratorin):** Verantwortlich für die Verwaltung der HTL-Musterstadt.
*   **Herr Bauer (Elternvertreter):** Mitglied des Elternvereins.

---

### **(Start des Transkripts)**

**Anna (Moderatorin):** "Herzlich willkommen und vielen Dank, dass Sie sich heute alle die Zeit für unseren Workshop nehmen. Mein Name ist Anna, und ich leite heute die Runde. Wir sind hier, um die Idee einer Mitfahr-App namens 'RideGreen' speziell für unsere Schule zu besprechen und die wichtigsten Anforderungen dafür zu sammeln. Ziel ist es, den Schulweg nachhaltiger, einfacher und gemeinschaftlicher zu gestalten.

Zur Agenda: Wir werden die Perspektiven der Fahrer, der Mitfahrer und die entscheidenden Themen Sicherheit und Verwaltung beleuchten. Fühlen Sie sich frei, jederzeit Fragen zu stellen. Starten wir mit einer kurzen Vorstellungsrunde."

*(Jeder stellt sich kurz vor.)*

---

### **Thema 1: Die Perspektive des Fahrers**

**Anna:** "Leo, fangen wir bei dir an. Du hast ein Auto und fährst täglich zur Schule. Was müsste die App dir bieten, damit du sagst: 'Klar, da nehme ich jemanden mit!'?"

**Leo (Schüler-Fahrer):** "Also, das Wichtigste für mich ist, dass es unkompliziert ist. Ich will nicht jeden Tag eine neue Fahrt erstellen müssen. Am besten wäre, ich lege meine Standardroute von zu Hause zur Schule einmal an und sage 'gilt für jeden Schultag um 7:30 Uhr'. Und natürlich die Kosten. Sprit ist teuer. Eine Funktion, die automatisch einen fairen Unkostenbeitrag vorschlägt, wäre super. Vielleicht 1-2 Euro pro Fahrt oder so."

**Anna:** "Guter Punkt. Einfache, wiederkehrende Fahrten und ein Vorschlag zur Kostenteilung. Welche Bedenken hättest du?"

**Leo:** "Dass die Leute unzuverlässig sind. Wenn ich jemanden einplane und die Person kommt morgens einfach nicht, ist das extrem ärgerlich. Ich brauche also eine Möglichkeit, Anfragen zu bestätigen, und vielleicht ein Bewertungssystem, damit ich sehe, ob jemand schon öfter nicht aufgetaucht ist. Und ich will vorher wissen, wen ich mitnehme – also ein kleines Profil mit Name und Klasse wäre gut."

---

### **Thema 2: Die Perspektive der Mitfahrerin**

**Anna:** "Danke, Leo. Mia, wechseln wir die Perspektive. Du bist auf den Bus oder deine Eltern angewiesen. Was wäre dir wichtig, um 'RideGreen' zu nutzen?"

**Mia (Schülerin-Mitfahrerin):** "Sicherheit. Ich würde nur mitfahren, wenn ich weiß, wer der Fahrer ist. Ein Profil mit Foto, vielleicht sogar welches Auto er fährt, wäre wichtig. Und ich will die genaue Route auf einer Karte sehen, damit ich weiß, wo ich einsteigen und aussteigen muss."

**Anna:** "Verständlich. Sicherheit und Transparenz sind also zentral. Wie würdest du eine Fahrt suchen?"

**Mia:** "Ich würde meine Adresse eingeben und die App sollte mir dann passende Fahrten in meiner Nähe anzeigen, die zur Schule führen. Wichtig wäre auch: Was passiert, wenn der Fahrer kurzfristig absagt? Bekomme ich eine Push-Nachricht, damit ich schnell eine Alternative suchen kann?"

**Herr Bauer (Elternvertreter):** "Darf ich da kurz einhaken? Genau das ist der Punkt, der auch Eltern beschäftigt. Zuverlässigkeit und ein Notfallplan."

**Anna:** "Absolut, Herr Bauer. Das leitet perfekt zu unserem nächsten, wichtigsten Thema über."

---

### **Thema 3: Sicherheit, Vertrauen und Verwaltung**

**Anna:** "Herr Bauer, Frau Huber – dieses Thema liegt Ihnen beiden sicher am Herzen. Was sind die unverhandelbaren Bedingungen, damit diese App von Eltern und der Schule akzeptiert wird?"

**Herr Bauer:** "Für mich als Vater gibt es drei K.o.-Kriterien. Erstens: **Verifizierung.** Niemand von außerhalb darf in diese App. Ich muss zu 100% sicher sein, dass jeder Nutzer – ob Fahrer oder Mitfahrer – tatsächlich Schüler oder Lehrer unserer Schule ist. Zweitens: **Transparenz.** Ich möchte, dass meine Tochter und ich sehen können, wer der Fahrer ist. Ein Bewertungssystem ist Pflicht. Fahrer, die schlechte Bewertungen bekommen, müssen Konsequenzen fürchten. Drittens: **Haftung.** Es muss glasklar sein, dass dies eine private Absprache ist und die Schule keine Haftung übernimmt."

**Frau Huber (Schul-Administratorin):** "Ich stimme Herrn Bauer vollkommen zu und ergänze die institutionelle Sicht. Die Verifizierung muss über die offizielle Schul-E-Mail-Adresse (`@htl-musterstadt.at`) laufen. Das ist die einzige Möglichkeit, einen geschlossenen Benutzerkreis sicherzustellen. Wir brauchen als Schule ein **Admin-Dashboard**. Dort müssen wir Nutzer verwalten, bei Problemen eingreifen und Nutzer bei wiederholtem Fehlverhalten sperren können. Und ganz wichtig: **Datenschutz nach DSGVO**. Die Daten müssen sicher in der EU gehostet werden, und es dürfen nur die absolut notwendigsten Daten erhoben werden."

**Leo:** "Heißt das, die Schule kann sehen, wann und mit wem ich fahre?"

**Frau Huber:** "Nein, auf keinen Fall. Das Admin-Dashboard sollte nur anonymisierte Statistiken zeigen – z.B. 'Heute wurden 50 Fahrgemeinschaften gebildet und 200 kg CO₂ gespart'. Ein Eingriff in konkrete Fahrten erfolgt nur bei gemeldeten Verstößen, etwa durch Herrn Bauer oder Mia."

---

### **Thema 4: Brainstorming von Features**

**Anna:** "Super, vielen Dank für diesen wichtigen Input. Fassen wir zusammen und sammeln konkrete Funktionswünsche. Ich notiere mal auf meinem virtuellen Whiteboard:

**Must-Haves (Mindestanforderungen):**
*   **Sichere Registrierung & Verifizierung** über Schul-E-Mail.
*   **Benutzerprofile** (Fahrer/Mitfahrer) mit Name, Klasse, Foto und Bewertung.
*   **Fahrer:** Erstellen von wiederkehrenden Fahrten mit Routenanzeige.
*   **Mitfahrer:** Kartengestützte Suche nach Fahrten in der Nähe.
*   **Buchungssystem:** Anfragen, Bestätigen und Ablehnen von Fahrten.
*   **In-App-Chat** zur Koordination nach erfolgreicher Buchung.
*   **Bewertungssystem** für Fahrer und Mitfahrer (Zuverlässigkeit, Pünktlichkeit).
*   **Admin-Dashboard** für die Schulverwaltung zur Nutzerverwaltung und für Statistiken.
*   **Push-Benachrichtigungen** (Anfrage, Bestätigung, Absage).

**Anna:** "Welche weiteren Ideen haben Sie? Was würde die App noch besser machen?"

**Mia:** "Vielleicht eine Art Filter? Zum Beispiel 'nur für Mädchen', wenn man sich am Anfang unsicher fühlt."

**Leo:** "Eine Kalender-Integration wäre cool. Wenn ich einen Termin habe und nicht fahre, kann ich die Fahrt für den Tag einfach im Kalender deaktivieren."

**Herr Bauer:** "Eine 'Panik-Taste' oder eine einfache Möglichkeit, eine Fahrt zu melden, wenn etwas komisch ist, wäre für das Sicherheitsgefühl der Eltern Gold wert."

**Frau Huber:** "Wir könnten Gamification einbauen. Wer die meisten Fahrten anbietet oder am häufigsten mitfährt, bekommt einen 'RideGreen Champion'-Badge. Das fördert die Nutzung."

---

### **Abschluss und nächste Schritte**

**Anna:** "Fantastisch. Das war eine unglaublich produktive Stunde. Wir haben ein klares Bild davon, was 'RideGreen' sein muss: eine sichere, vertrauenswürdige und einfach zu bedienende Plattform für unsere Schulgemeinschaft.

Die nächsten Schritte sind: Ich werde dieses Transkript aufbereiten und in ein sauberes Anforderungsdokument überführen. Die Kernpunkte sind die **geschlossene Community**, das **mehrstufige Sicherheitskonzept** (Verifizierung, Bewertungen, Admin-Kontrolle) und die **einfache Bedienbarkeit** für Fahrer und Mitfahrer.

Vielen herzlichen Dank für Ihre Zeit und Ihre wertvollen Beiträge!"

**(Ende des Transkripts)**
