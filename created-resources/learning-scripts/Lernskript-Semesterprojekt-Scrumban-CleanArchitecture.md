# Leitfaden für das Semesterprojekt: Praktische Umsetzung mit Scrumban und Clean Architecture

<div style="width: 100%;"> 	
    <div style="margin-left:1cm; margin-right:1.5cm; text-align: center;">
    <h2>Version History</h2>
    <table style="border solid 1px;width: 100%;">
    <th style="text-align:left">Version</th>
    <th>Änderungen</th>
    <th style="text-align:right">Autor</th>
    <tr>
    <td style="text-align:left">2025-09-02</td>
    <td style="text-align:left">Initiale Erstellung basierend auf Gliederung</td>
    <td style="text-align:right">G. Copilot</td>
    </tr>
    </table>
</div>

<div style="page-break-after: always"></div>

<h2>Inhaltsverzeichnis</h2>

- [Leitfaden für das Semesterprojekt: Praktische Umsetzung mit Scrumban und Clean Architecture](#leitfaden-für-das-semesterprojekt-praktische-umsetzung-mit-scrumban-und-clean-architecture)
- [1. Das Fundament – Projektmanagement und Planung](#1-das-fundament--projektmanagement-und-planung)
  - [1.1. Einleitung: Vom Konzept zum Code](#11-einleitung-vom-konzept-zum-code)
    - [1.1.1. Ziel dieses Leitfadens](#111-ziel-dieses-leitfadens)
    - [1.1.2. Die drei Säulen des Projekts](#112-die-drei-säulen-des-projekts)
  - [1.2. Agiles Projektmanagement mit Scrumban](#12-agiles-projektmanagement-mit-scrumban)
    - [1.2.1. Was ist Scrumban und warum ist es ideal für unser Projekt?](#121-was-ist-scrumban-und-warum-ist-es-ideal-für-unser-projekt)
    - [1.2.2. Die agilen Rollen: Vom Scrum-Team zum Scrumban-Flow](#122-die-agilen-rollen-vom-scrum-team-zum-scrumban-flow)
    - [1.2.3. Werkzeuge einrichten: Das digitale Whiteboard](#123-werkzeuge-einrichten-das-digitale-whiteboard)
    - [1.2.4. Der Scrumban-Workflow in der Praxis](#124-der-scrumban-workflow-in-der-praxis)
- [2. Die Struktur – Software-Architektur und Technologie](#2-die-struktur--software-architektur-und-technologie)
  - [2.1. Clean Architecture: Ein Bauplan für wartbare Software](#21-clean-architecture-ein-bauplan-für-wartbare-software)
  - [2.2. API-First: Die Schnittstelle als Vertrag](#22-api-first-die-schnittstelle-als-vertrag)
- [3. Die Umsetzung – Praktische Leitfäden](#3-die-umsetzung--praktische-leitfäden)
  - [3.1. Schritt-für-Schritt: Vom Feature zur Implementierung](#31-schritt-für-schritt-vom-feature-zur-implementierung)
  - [3.2. Teststrategie: Qualität von innen nach außen sichern](#32-teststrategie-qualität-von-innen-nach-außen-sichern)
  - [3.3. Kollaboration mit Git: Ein einfacher Workflow für das Team](#33-kollaboration-mit-git-ein-einfacher-workflow-für-das-team)
  - [3.4. Code-Qualität und Konventionen: Eine gemeinsame Sprache sprechen](#34-code-qualität-und-konventionen-eine-gemeinsame-sprache-sprechen)
- [4. Glossar & weiterführende Ressourcen](#4-glossar--weiterführende-ressourcen)

<div style="page-break-after: always;"></div>

# 1. Das Fundament – Projektmanagement und Planung

## 1.1. Einleitung: Vom Konzept zum Code

Stellen Sie sich vor, Sie bauen ein komplexes Haus. Sie benötigen eine flexible Bauleitung, einen soliden Bauplan und hochwertiges Material. In unserem Projekt ist **Scrumban** Ihre Bauleitung, die **Clean Architecture** der Bauplan und der vorgegebene **Technologie-Stack** Ihr Baumaterial. Dieses Skript ist Ihr roter Faden, der Sie sicher durch alle Phasen führt.

### 1.1.1. Ziel dieses Leitfadens
Dieses Skript begleitet Sie von der ersten Idee über die systematische Planung bis hin zur strukturierten Umsetzung Ihres Softwareprojekts. Es dient als Vorbereitung und als Nachschlagewerk während der gesamten Projektlaufzeit.

### 1.1.2. Die drei Säulen des Projekts
Unser Erfolg stützt sich auf drei zentrale Säulen, die wir in diesem Leitfaden detailliert betrachten:
1.  **`Projektmanagement (Scrumban)`**: Wie wir unsere Arbeit organisieren, um flexibel und effizient zu bleiben.
2.  **`Software-Architektur (Clean Architecture)`**: Wie wir unser System strukturieren, damit es robust, wartbar und erweiterbar ist.
3.  **`Implementierungsstrategie (API-First)`**: Wie wir die Zusammenarbeit im Team durch klare Schnittstellen-Definitionen optimieren.

> <span style="font-size: 1.5em">:bulb:</span> **Merksatz:** Ein erfolgreiches Softwareprojekt kombiniert eine flexible Methode, eine saubere Struktur und eine klare Kommunikationsstrategie.

---

## 1.2. Agiles Projektmanagement mit Scrumban

### 1.2.1. Was ist Scrumban und warum ist es ideal für unser Projekt?
Scrumban ist eine hybride Methode, die das Beste aus zwei Welten vereint: die strukturgebenden Elemente von **Scrum** (wie regelmäßige Zyklen und klare Rollen) mit der Flexibilität und dem visuellen Workflow von **Kanban**. Für unser Semesterprojekt ist es ideal, da es Struktur bietet, ohne uns mit zu vielen starren Regeln zu überfrachten. Der Fokus liegt auf einem kontinuierlichen Arbeitsfluss ("Flow").

### 1.2.2. Die agilen Rollen: Vom Scrum-Team zum Scrumban-Flow
Die klassischen Scrum-Rollen bleiben in ihrer Verantwortung bestehen, aber ihr Fokus passt sich dem "Flow"-Gedanken an.

*   **`Product Owner (Der Visionär)`**: Ist für das "Was" und "Warum" verantwortlich. Statt starrer Sprint-Planungen sorgt er für ein ständig priorisiertes Backlog, aus dem das Team Aufgaben ziehen kann.
*   **`Scrum Master (Der Flow-Manager)`**: Konzentriert sich auf die Optimierung des Arbeitsflusses. Er visualisiert den Prozess auf dem Board, identifiziert Engpässe und achtet auf die Einhaltung von "Work in Progress"-Limits, um das Team vor Überlastung zu schützen.
*   **`Development Team (Die Experten)`**: Setzt die Anforderungen um. Das Team arbeitet nach dem **Pull-Prinzip**: Ist eine Aufgabe fertig, wird die nächste mit der höchsten Priorität aus dem Backlog "gezogen".

### 1.2.3. Werkzeuge einrichten: Das digitale Whiteboard
Ein visuelles Board ist das Herzstück von Scrumban.
*   **Option A: `GitHub Projects`**: Ideal, da es direkt in unser Code-Repository integriert ist. Wir können ein Board mit Spalten wie `Backlog`, `Bereit zur Entwicklung`, `In Arbeit`, `Review/Test` und `Fertig` erstellen und Issues direkt als Aufgabenkarten verwenden.
*   **Option B: `Trello`**: Eine einfache und intuitive Alternative. Mit kostenlosen "Power-Ups" können wir zusätzliche Funktionen wie WIP-Limits oder Schätzungen hinzufügen.

### 1.2.4. Der Scrumban-Workflow in der Praxis
*   **Anforderungen als User Stories formulieren**: Wir fassen jede Anforderung als eine kurze Geschichte aus Nutzersicht zusammen.
*   **Planung & Priorisierung**: Regelmäßig wählen wir die wichtigsten User Stories aus dem Backlog aus und bereiten sie für die Umsetzung vor.
*   **Das tägliche Arbeiten**: Jede Aufgabe wandert sichtbar für alle über das Board. WIP-Limits helfen uns, fokussiert zu bleiben.
*   **Review & Retrospektive**: In regelmäßigen Abständen präsentieren wir unsere Ergebnisse und überlegen gemeinsam, wie wir unseren Arbeitsprozess verbessern können.

<div style="page-break-after: always;"></div>

# 2. Die Struktur – Software-Architektur und Technologie

## 2.1. Clean Architecture: Ein Bauplan für wartbare Software

[Detaillierte Ausarbeitung](./sections/2.1-Clean-Architecture-Ein-Bauplan-fuer-wartbare-Software.md)

---

## 2.2. API-First: Die Schnittstelle als Vertrag

[Detaillierte Ausarbeitung](./sections/2.2-API-First-Die-Schnittstelle-als-Vertrag.md)

<div style="page-break-after: always;"></div>

# 3. Die Umsetzung – Praktische Leitfäden

## 3.1. Schritt-für-Schritt: Vom Feature zur Implementierung

[Detaillierte Ausarbeitung](./sections/3.1-Schritt-fuer-Schritt-Vom-Feature-zur-Implementierung.md)

## 3.2. Teststrategie: Qualität von innen nach außen sichern

[Detaillierte Ausarbeitung](./sections/3.2-Teststrategie-Qualitaet-sichern.md)

## 3.3. Kollaboration mit Git: Ein einfacher Workflow für das Team

[Detaillierte Ausarbeitung](./sections/3.3-Kollaboration-mit-Git.md)

## 3.4. Code-Qualität und Konventionen: Eine gemeinsame Sprache sprechen

[Detaillierte Ausarbeitung](./sections/3.4-Code-Qualitaet-und-Konventionen.md)

---

# 4. Glossar & weiterführende Ressourcen

*   **Glossar**: Alle wichtigen Begriffe (Scrumban, Clean Architecture, API-First, User Story etc.) werden hier kurz und prägnant erklärt.
*   **Ressourcen**: Eine Sammlung von Links zu nützlichen Tools, Artikeln und Tutorials zur Vertiefung.
