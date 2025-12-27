# Projektvorschläge für die 5. HTL (8×4 EH)

Dieses Dokument enthält **12 Projektideen** in den Bereichen AI Agents mit CrewAI, Spring Boot & Apache Camel, RAG mit CrewAI sowie MCP Server.  
Jedes Projekt ist für eine Dauer von 8 Wochen à 4 EH (50 Minuten) ausgelegt.

---

## Übersichtstabelle

| Themenbereich | Projekt | Projektidee | Technologien |
|---------------|---------|-------------|--------------|
| AI Agents mit CrewAI | Intelligenter Chat-Assistent | Chatbot mit CrewAI und Web-Frontend (z. B. Reiseplanung) | CrewAI, FastAPI, JS/React |
| AI Agents mit CrewAI | AI Job Application Assistant | Analyse und Feedback für Bewerbungsunterlagen | CrewAI, FastAPI, ChromaDB |
| AI Agents mit CrewAI | Smart Campus Guide | Schul-Info Chatbot (Stundenplan, Räume, Projekte) | CrewAI, FastAPI, Mock-DB |
| Spring Boot & Camel | Mini-Firma Integration | Integration von Bestellungen, Kunden, Rechnungen | Spring Boot, Apache Camel, JPA |
| Spring Boot & Camel | IoT-Sensor Pipeline | Datenfluss von simulierten Sensoren über Camel | Spring Boot, Camel, PostgreSQL |
| Spring Boot & Camel | E-Commerce Routing | Bestellprozess mit Routing, Aggregation, Transformation | Spring Boot, Camel, JPA |
| RAG mit CrewAI | Wissenschatbot | RAG-System für Dokumente | CrewAI, ChromaDB/FAISS, FastAPI |
| RAG mit CrewAI | Schulordnung Bot | Fragen zur HTL-Schulordnung beantworten | CrewAI, ChromaDB, Web-Frontend |
| RAG mit CrewAI | Research Librarian | Recherche-Assistent für Fachartikel | CrewAI, FAISS, Upload & Chat-UI |
| MCP Server | Basis MCP-Server | Eigenen MCP-Server implementieren (Filesystem, API) | Python, MCP |
| MCP Server | Finance Connector | Finanzdaten (Wechselkurse, Aktien, Krypto) via MCP | Python, MCP, API-Integration |
| MCP Server | School Data MCP | Schülerdatenbank via MCP anbinden | Python, MCP, SQLite/Postgres |

---

## 1. AI Agents mit CrewAI und Webfrontend

### Projekt 1: Intelligenter Chat-Assistent  
**Projektidee:** Entwicklung eines Chat-Systems (z. B. für Reiseplanung oder Studienberatung) mit CrewAI orchestrierten Agenten und Web-Frontend.  

**Milestones:**  
1. Einführung CrewAI & erste Agenten-Beispiele  
2. Definition der Rollen (Planner, Researcher, Summarizer)  
3. Aufbau Python-Backend (FastAPI/Flask)  
4. Erstellung einer Chat-Oberfläche (Web-Frontend)  
5. Anbindung CrewAI ↔ Frontend  
6. Testing & Logging einbauen  
7. Erweiterung (Memory, Persona-Styles)  
8. Präsentation & Dokumentation  

**Technologien:** CrewAI, Python (FastAPI), HTML/JS/React

---

### Projekt 2: AI Job Application Assistant  
**Projektidee:** CrewAI-basierter Assistent, der Bewerbungsunterlagen analysiert und Feedback gibt.  

**Milestones:**  
1. CrewAI Setup & Dokumenteninput testen  
2. Rollen definieren (CV-Reviewer, HR-Agent)  
3. Backend mit FastAPI aufbauen  
4. ChromaDB für Embeddings von CVs integrieren  
5. Feedback-Logik entwickeln  
6. Chat-UI anbinden  
7. Erweiterung (Motivationsschreiben, Tipps)  
8. Abschluss & Reflexion  

**Technologien:** CrewAI, FastAPI, ChromaDB, Web-Frontend

---

### Projekt 3: Smart Campus Guide  
**Projektidee:** AI-Agent beantwortet Fragen zu Schule, Stundenplan, Räumen und Projekten.  

**Milestones:**  
1. Einführung CrewAI und Basisagent erstellen  
2. Definition von Info-Agenten (Stundenplan, Lehrer, Räume)  
3. Mock-Datenbank mit Schulinfos erstellen  
4. Backend-API (FastAPI) bauen  
5. Chat-UI verbinden  
6. Testing & Logging  
7. Erweiterung (FAQ, Navigation)  
8. Präsentation der Lösung  

**Technologien:** CrewAI, FastAPI, Mock-Datenbank, Web-UI

---

## 2. Spring Boot & Apache Camel

### Projekt 1: Mini-Firma Integration  
**Projektidee:** Integration von Services (Bestellungen, Rechnungen, Kundenverwaltung) über Camel-Routen.  

**Milestones:**  
1. Einführung Apache Camel & EAI Patterns  
2. Spring Boot Projekt aufsetzen  
3. Erste Camel-Routen implementieren (REST ↔ DB)  
4. Transformationen (JSON ↔ XML) einbauen  
5. JPA-Anbindung (Persistenz)  
6. Error Handling & Monitoring  
7. Modellierung des Geschäftsprozesses  
8. Architekturdiagramm & Präsentation  

**Technologien:** Java (Spring Boot, JPA), Apache Camel

---

### Projekt 2: IoT-Sensor Data Pipeline  
**Projektidee:** Simulation von IoT-Sensoren, deren Daten via Camel verarbeitet und gespeichert werden.  

**Milestones:**  
1. Sensor-Datenquellen simulieren (REST/MQTT)  
2. Camel-Route aufsetzen (Datenempfang)  
3. Transformationen (z. B. JSON Cleaning)  
4. Speicherung in PostgreSQL/H2  
5. Abfragen über REST bereitstellen  
6. Error Handling implementieren  
7. Erweiterung: Filterung/Aggregation der Daten  
8. Präsentation & Dokumentation  

**Technologien:** Spring Boot, Apache Camel, PostgreSQL/H2

---

### Projekt 3: E-Commerce Order Routing  
**Projektidee:** Mini-Shop: Bestellung → Validierung → Lagerverwaltung → Rechnungsservice.  

**Milestones:**  
1. Einführung Camel-Routing Patterns  
2. Spring Boot Projekt initialisieren  
3. REST-API für Bestellungen erstellen  
4. Content-Based Router implementieren  
5. Splitter/Aggregator einsetzen  
6. JPA-Anbindung (Produkte/Bestellungen)  
7. Error Handling einbauen  
8. Abschlusspräsentation  

**Technologien:** Spring Boot, Apache Camel, JPA

---

## 3. RAG mit CrewAI

### Projekt 1: Wissenschatbot  
**Projektidee:** RAG-System, das hochgeladene Dokumente durchsucht und Antworten liefert.  

**Milestones:**  
1. Einführung RAG & Embeddings  
2. CrewAI Setup mit VektorDB (ChromaDB/FAISS)  
3. Upload & Indexierung von Dokumenten  
4. Retrieval-Mechanismus implementieren  
5. CrewAI Agenten verbinden  
6. Chat-Frontend erstellen  
7. Erweiterung (Memory, Query-Reformulation)  
8. Vergleich LLM-only vs. RAG  

**Technologien:** CrewAI, ChromaDB/FAISS, FastAPI, Web-UI

---

### Projekt 2: Schulordnung Bot  
**Projektidee:** RAG-System für PDFs der Schulordnung, Beantwortung schulbezogener Fragen.  

**Milestones:**  
1. CrewAI Setup & PDF Import  
2. Dokumente in Embeddings zerlegen  
3. ChromaDB/FAISS für Retrieval einrichten  
4. Frage-Antwort-Logik entwickeln  
5. Chat-UI anbinden  
6. Erweiterung (Mehrsprachigkeit, Query-Reformulation)  
7. Evaluation (Genauigkeit der Antworten)  
8. Abschlusspräsentation  

**Technologien:** CrewAI, ChromaDB, Web-Frontend

---

### Projekt 3: AI Research Librarian  
**Projektidee:** Fachartikel hochladen, RAG beantwortet Forschungsfragen.  

**Milestones:**  
1. Setup CrewAI & VektorDB  
2. Upload-System für Artikel erstellen  
3. Embeddings generieren & speichern  
4. Retrieval implementieren  
5. Answer Agent entwickeln  
6. Chat-UI bauen  
7. Erweiterung (Themenfilter, Quellenangaben)  
8. Abschluss & Demo  

**Technologien:** CrewAI, FAISS, Upload & Chat-UI

---

## 4. MCP Server

### Projekt 1: Basis MCP-Server  
**Projektidee:** MCP-Server, der einfache Datenquellen (Filesystem, APIs) für LLM zugänglich macht.  

**Milestones:**  
1. Einführung MCP & Architekturprinzipien  
2. Einfachen MCP-Server implementieren  
3. File Listing Endpoint einbauen  
4. Erweiterung: API-Anbindung (z. B. Wetterdaten)  
5. LLM-Integration demonstrieren  
6. Error Handling & Logging  
7. Erweiterung: zweite Schnittstelle (DB)  
8. Abschlusspräsentation  

**Technologien:** Python, MCP, CrewAI

---

### Projekt 2: Finance MCP Connector  
**Projektidee:** MCP-Server für Finanzdaten (Wechselkurse, Aktien, Krypto).  

**Milestones:**  
1. Einführung API-Integration in MCP  
2. MCP-Server Grundgerüst erstellen  
3. Anbindung CoinGecko/Yahoo Finance API  
4. Endpunkte definieren (Preisabfrage, Historie)  
5. LLM-Abfragen testen  
6. Erweiterung: Reports (z. B. Währungsentwicklung)  
7. Error Handling & Logging  
8. Abschluss-Demo  

**Technologien:** Python, MCP, API-Integration (CoinGecko/Yahoo Finance)

---

### Projekt 3: School Data MCP  
**Projektidee:** MCP-Server mit Schülerdatenbank (Mock), LLM erstellt Reports.  

**Milestones:**  
1. Setup MCP-Server  
2. SQLite/Postgres Datenbank mit Schülerdaten anlegen  
3. MCP-Endpunkte definieren (Noten, Stundenplan)  
4. Integration mit LLM  
5. Reports generieren (Durchschnitt, Filter)  
6. Error Handling & Sicherheit (Auth Basics)  
7. Erweiterung (Export als JSON/CSV)  
8. Präsentation & Reflexion  

**Technologien:** Python, MCP, SQLite/Postgres

---
