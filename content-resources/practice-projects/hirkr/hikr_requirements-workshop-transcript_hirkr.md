# Transkript: Requirements Workshop "hirkr"

**Datum:** 13. Oktober 2025
**Zeit:** 14:00 - 16:00 Uhr
**Ort:** Virtueller Konferenzraum

---

### **Teilnehmer**

*   **Moderatorin:** Alex (A)
*   **Erfahrene Alpinistin:** Lena (L) - *Power-Userin*
*   **Community-Organisator:** Markus (M) - *Der Soziale*
*   **Gelegenheitswanderer:** Tom (T) - *Der Einsteiger*
*   **Bergführer/Sicherheitsexperte:** Stefan (S) - *Der Absicherer*

---

### **Agenda**

1.  **Begrüßung und Vision: "Mehr als nur ein Gipfel"** (14:00 - 14:15)
2.  **Das Kern-Feature: Wie findet man die richtigen Leute?** (14:15 - 14:45)
3.  **Das Nutzerprofil: Wer bin ich und was kann ich?** (14:45 - 15:10)
4.  **Tourenplanung & Gruppenorganisation** (15:10 - 15:35)
5.  **Sicherheit, Vertrauen und Verantwortung** (15:35 - 15:55)
6.  **Zusammenfassung und nächste Schritte** (15:55 - 16:00)

---

### **Protokoll des Workshops**

#### **1. Begrüßung und Vision (14:00 - 14:15)**

**Alex (A):** "Herzlich willkommen an alle zum Requirements Workshop für unser neues Projekt, das wir intern 'hirkr' nennen. Mein Name ist Alex. Die Vision ist, eine App zu schaffen, die das Finden von Gleichgesinnten für Berg- und Wandererlebnisse so einfach und intuitiv macht wie nie zuvor. Wir wollen die Lücke zwischen Tourenplanungs-Apps und der reinen sozialen Vernetzung schließen. Lena, als Power-Userin, was ist dein erster Gedanke dazu?"

**Lena (L):** "Hallo zusammen. Mein erster Gedanke ist: Endlich! Ich liebe Bergfex für die Tourenplanung, aber es ist eine 'Single-Player'-App. Ich verbringe Stunden damit, eine anspruchsvolle Tour zu planen, und dann scheitert es daran, eine verlässliche Begleitung zu finden, die das gleiche Tempo und die gleiche Risikobereitschaft hat. Mein größtes Problem sind Leute, die ihre Fähigkeiten überschätzen."

**Markus (M):** "Servus. Ich kenne das von der anderen Seite. Ich organisiere ständig Wanderungen über WhatsApp-Gruppen. Das ist die Hölle. 20 Zusagen, 5 Absagen eine Stunde vorher, und am Ende stehen 8 Leute am Treffpunkt, von denen die Hälfte die falsche Ausrüstung dabeihat. Die Kommunikation und die Verbindlichkeit sind mein Hauptproblem."

**Tom (T):** "Hallo. Ich bin da vielleicht das Gegenteil von Lena. Ich würde gerne öfter raus, aber ich fühle mich von den 'Profi-Gruppen' eingeschüchtert. Ich will nicht derjenige sein, der alle aufhält. Ich suche eine entspannte Gruppe für eine schöne Sonntags-Wanderung, ohne Leistungsdruck. Für mich steht das Erlebnis im Vordergrund, nicht der Gipfelsieg um jeden Preis."

**Stefan (S):** "Guten Tag. Als Bergführer sehe ich vor allem die Verantwortung. Eine App, die Leute zusammenbringt, um potenziell gefährliche Aktivitäten durchzuführen, muss Sicherheit an die erste Stelle setzen. Eine Fehleinschätzung des Partners oder der Bedingungen kann im schlimmsten Fall tödlich enden. Mein Fokus liegt klar auf realistischer Selbsteinschätzung, korrekter Tourenklassifizierung und Notfall-Features."

**Alex (A):** "Perfekt, danke. Das zeigt schon die enorme Bandbreite an Anforderungen. Steigen wir direkt ins Herzstück ein: das 'Matching'."

---

#### **2. Das Kern-Feature: Wie findet man die richtigen Leute? (14:15 - 14:45)**

**Alex (A):** "Wir haben das 'Tinder-Prinzip' als Aufhänger. Was bedeutet das für euch? Swipen wir nach Personen oder nach Touren?"

**Lena (L):** "Ganz klar nach Touren. Ich will nicht wahllos durch Profile wischen. Ich will eine Tour erstellen oder eine bestehende Tour finden – sagen wir, den 'Stüdlgrat am Großglockner' – und dann sehen, wer daran interessiert ist und die nötigen Skills hat. Das Profil der Person ist dann der zweite Schritt. Die Tour definiert den Kontext."

**Tom (T):** "Oh, das sehe ich anders. Ich weiß oft gar nicht genau, wohin ich will. Ich würde lieber Leute in meiner Nähe finden, die sympathisch wirken und ein ähnliches Fitnesslevel haben. Wenn ich jemanden finde, der nett aussieht und 'gemütliche Almwanderungen' im Profil stehen hat, würde ich den matchen. Die Tour können wir dann gemeinsam aussuchen."

**Markus (M):** "Ich sehe beide Punkte. Warum nicht beides anbieten? Ein 'Entdecken'-Bereich, wo ich Leute finde, und ein 'Touren'-Bereich, wo ich geplante Events sehe. Ich persönlich würde eine öffentliche Tour erstellen, z.B. 'Rundwanderung am Wolfgangsee', und dann können Leute eine Anfrage zum Beitreten stellen. Ich als Organisator kann dann die Teilnehmer bestätigen. Das gibt mir die Kontrolle."

**Stefan (S):** "Markus' Vorschlag ist gut, aber er braucht eine Sicherheitskomponente. Wenn du als Organisator eine Tour erstellst, muss die App dich zwingen, die Anforderungen klar zu definieren. Nicht nur 'schwere Tour', sondern nach einer offiziellen Skala, z.B. T4 auf der SAC-Wanderskala. Und wenn sich jemand anmeldet, muss die App einen Abgleich machen: 'Warnung: Toms angegebene Erfahrung passt nicht zur Anforderung T4'."

**Lena (L):** "Genau, dieser Abgleich ist entscheidend! Ein 'Kompatibilitäts-Score' für eine bestimmte Tour. Die App könnte anzeigen: 'Lena und Stefan haben eine 95%-Übereinstimmung für diese Hochtour, basierend auf Erfahrung und Tempo. Lena und Tom haben eine 20%-Übereinstimmung.'"

**Alex (A):** "Spannend. Wir halten fest: Kein reines 'Personen-Swipen'. Stattdessen ein hybrider Ansatz:
1.  **Touren-zentrierter Ansatz:** User erstellen oder finden Touren, andere bewerben sich.
2.  **Personen-zentrierter Ansatz:** User entdecken Profile basierend auf Nähe und Interessen.
3.  **Kompatibilitäts-Check:** Ein Algorithmus warnt proaktiv, wenn die Fähigkeiten eines Nutzers nicht zu den Anforderungen einer Tour passen."

---

#### **3. Das Nutzerprofil: Wer bin ich und was kann ich? (14:45 - 15:10)**

**Alex (A):** "Das alles hängt von einem aussagekräftigen Profil ab. Wie verhindern wir, dass jeder einfach 'Profi' ankreuzt?"

**Stefan (S):** "Selbsteinschätzung ist der Feind. Wir brauchen verifizierbare Daten. Das Profil sollte in drei Bereiche aufgeteilt sein:
1.  **Stammdaten:** Name, Alter (wichtig!), Notfallkontakt.
2.  **Qualitative Selbsteinschätzung:** Ein Freitextfeld 'Über mich', bevorzugte Aktivitäten (Wandern, Klettern, Skitour), was man sucht.
3.  **Quantitative, verifizierte Fakten:** Das ist der Kern. Hier muss die App glänzen."

**Lena (L):** "Ich will mein Profil mit meinem Garmin- oder Suunto-Konto verknüpfen können. Die App soll sehen, dass ich letzte Woche 3000 Höhenmeter gemacht habe. Das ist ein Fakt, keine Meinung. Ein Touren-Logbuch, in das man vergangene Touren einträgt – vielleicht sogar mit GPX-Upload als 'Beweis' – wäre Gold wert. Dann sehe ich: 'Aha, Stefan war schon auf dem Mont Blanc, dem kann ich vertrauen'."

**Tom (T):** "Das klingt für mich schon wieder sehr nach Leistungsdruck. Ich habe kein Garmin-Konto. Was ist mit mir? Vielleicht könnte man Badges für absolvierte Touren innerhalb der App bekommen? Und vielleicht kann man sich gegenseitig Fähigkeiten bestätigen? Wenn ich mit Markus wandern war, kann ich nachher bestätigen: 'Markus ist trittsicher'."

**Markus (M):** "Die Idee mit der Bestätigung ist gut, aber auch gefährlich. Das kann zu Gefälligkeitsbewertungen führen. Wichtiger fände ich eine 'Zuverlässigkeits-Bewertung'. Ist die Person zum Treffpunkt erschienen? War sie pünktlich? Das ist eine einfache Ja/Nein-Frage nach jeder Tour. Das hilft gegen die No-Shows."

**Stefan (S):** "Die Zuverlässigkeitsbewertung ist exzellent. Bei den Fähigkeiten bin ich skeptisch. Aber was wir brauchen, ist eine klare Klassifizierung in der App. Nicht 'Anfänger' oder 'Profi'. Besser wären Level, die an offizielle Ausbildungen angelehnt sind. Level 1: 'Ich kann 3 Stunden wandern'. Level 5: 'Ich habe einen Hochtourenkurs absolviert'. Man könnte sogar offizielle Zertifikate (z.B. vom Alpenverein) hochladen und verifizieren lassen."

**Alex (A):** "Zusammenfassend für das Profil:
*   Mischung aus weichen Faktoren ('Über mich') und harten Fakten.
*   **Must-have:** Verknüpfung mit Fitness-Trackern (Garmin, etc.) zur Anzeige der jüngsten Aktivität.
*   **Must-have:** Ein internes Touren-Logbuch.
*   **Feature-Idee:** Ein verifiziertes Level-System, evtl. durch Hochladen von Zertifikaten.
*   **Soziales Feature:** Ein simpler 'Zuverlässigkeits-Score' ( erschienen / nicht erschienen)."

---

#### **4. Tourenplanung & Gruppenorganisation (15:10 - 15:35)**

**Alex (A):** "Angenommen, eine Gruppe hat sich gefunden. Wie geht es weiter? Markus?"

**Markus (M):** "Wir brauchen einen dedizierten Chat für jede Tour. Keinen ewigen Gruppenchat, sondern einen, der sich nach der Tour automatisch archiviert. In diesem Chat müssen wichtige Infos angepinnt werden können: Treffpunkt (mit Kartenlink), Zeit, Ausrüstungs-Checkliste. Und eine simple Umfragefunktion, z.B. für Fahrgemeinschaften."

**Lena (L):** "Bei der Tourenplanung selbst will ich die Features, die ich von Bergfex kenne. Ich will eine Tour nicht nur mit 'Start' und 'Ziel' beschreiben. Ich will einen GPX-Track importieren oder auf einer Karte zeichnen können. Die App muss dann automatisch Distanz, Höhenmeter und eine geschätzte Gehzeit berechnen. Und zwar basierend auf meinem persönlichen Tempo, das sie aus meinen vergangenen Touren gelernt hat!"

**Stefan (S):** "Und die App muss diese Tour dann mit externen Daten anreichern. Automatische Wetterwarnungen für die Region und den Zeitraum. Anzeige der aktuellen Lawinenwarnstufe. Und die Karte muss topografisch sein, mit Hangneigung und offiziell markierten Wegen. Standard-Google-Maps reicht hier nicht."

**Tom (T):** "Für mich wäre es super, wenn die App auch offizielle Touren vorschlägt. Wenn ich in einer Region bin, könnte die App sagen: 'Hier sind 3 anfängerfreundliche, gut bewertete Touren in deiner Nähe'. Ich will nicht immer alles selbst planen müssen. Ich will mich inspirieren lassen."

**Alex (A):** "Tolle Punkte. Für die Organisation:
*   Temporäre, tourenbezogene Chats mit Pin- und Umfragefunktion.
*   Fortgeschrittener Touren-Editor mit GPX-Import/Zeichnen und automatischer Berechnung.
*   Personalisierte Zeitberechnung basierend auf Nutzer-Historie.
*   Integration von externen Sicherheitsdaten (Wetter, Lawine).
*   Ein 'Inspirations'-Feed mit anfängerfreundlichen Tourenvorschlägen."

---

#### **5. Sicherheit, Vertrauen und Verantwortung (15:35 - 15:55)**

**Alex (A):** "Stefan, dieses Thema gehört dir. Was sind die absoluten No-Gos und Must-haves?"

**Stefan (S):** "No-Go Nummer 1 ist, die Verantwortung komplett auf den Nutzer abzuwälzen. Die App muss eine aktive Rolle spielen.
*   **Must-have 1: Notfall-Button.** In jeder Touransicht muss ein großer, leicht erreichbarer Button sein, der den aktuellen Standort und die Notfallkontakte des Nutzers anzeigt und den lokalen Notruf (z.B. 140 für die Bergrettung in Österreich) wählt.
*   **Must-have 2: Check-in/Check-out.** Vor der Tour muss jeder Teilnehmer aktiv 'einchecken'. Wenn ein Teilnehmer bis zu einer bestimmten Zeit nach der geschätzten Touren-Dauer nicht 'ausgecheckt' hat, könnte eine Benachrichtigung an den Organisator und/oder den Notfallkontakt gesendet werden. Das ist eine Art 'Totmannschaltung'.
*   **Must-have 3: Klare Haftungsausschlüsse.** Die App muss an jeder kritischen Stelle (Tour-Erstellung, Beitritt) klar kommunizieren, dass sie nur eine Vermittlungsplattform ist und keine Verantwortung für die Durchführung übernimmt."

**Tom (T):** "Die Check-out-Funktion finde ich super. Das gibt mir ein sicheres Gefühl. Was auch Vertrauen schafft, wäre eine Art 'verifiziertes Profil'. Vielleicht durch eine einmalige Identitätsprüfung. Dann weiß ich, dass hinter dem Profil 'Markus' auch wirklich Markus steckt."

**Markus (M):** "Guter Punkt. Und Bewertungen nach der Tour. Aber nicht nur Sterne. Eher Tags. War die Person 'gut vorbereitet', 'freundlich', 'zuverlässig'? Das hilft, die Persönlichkeit besser einzuschätzen."

**Lena (L):** "Ich würde noch weiter gehen. Ich will sehen, ob eine Person 'Premium' ist. Ich wäre bereit, für diese App zu zahlen, wenn dadurch die Qualität der Profile und Features steigt. Ein Abo-Modell filtert die Leute heraus, die es nicht ernst meinen. Kostenlose Nutzer haben Basisfunktionen, Premium-Nutzer bekommen die detaillierten Filter, Garmin-Sync und unbegrenzte Touren-Organisation."

**Alex (A):** "Das ist ein wichtiger Punkt zum Geschäftsmodell. Fassen wir die Sicherheit zusammen:
*   Notfall-Button mit Standort und Direktwahl.
*   Check-in/Check-out-System mit optionaler Benachrichtigung an Notfallkontakte.
*   Optionale Identitätsverifizierung für mehr Vertrauen.
*   Tag-basiertes Bewertungssystem nach der Tour.
*   Deutliche Haftungshinweise an allen relevanten Stellen."

---

#### **6. Zusammenfassung und nächste Schritte (15:55 - 16:00)**

**Alex (A):** "Vielen Dank für diesen unglaublich dichten und produktiven Workshop. Die Kern-Takeaways sind: Wir bauen keine simple Dating-App, sondern ein anspruchsvolles Community-Tool mit starkem Fokus auf Sicherheit und Kompatibilität. Der hybride Ansatz aus touren- und personenzentriertem Matching scheint der richtige Weg zu sein. Die Profiltiefe mit verifizierbaren Fakten ist der Schlüssel zum Erfolg.

Als nächste Schritte werden wir diese Anforderungen in User Stories überführen und erste Wireframes für den Profil-Screen und den Touren-Matching-Prozess erstellen. Diese werden wir euch in einer Folgesitzung präsentieren.

Nochmals herzlichen Dank für eure Zeit und Expertise. Das war extrem wertvoll. Einen schönen Abend!"

**(Ende des Workshops)**
