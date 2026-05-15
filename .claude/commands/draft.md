---
description: Neuen Projektentwurf interaktiv erstellen und als Datei speichern
argument-hint: [Projektname]
allowed-tools: [Write, Read, AskUserQuestion]
---

# Projektentwurf erstellen

Erstelle einen neuen Projektentwurf auf Basis des folgenden Templates. Führe den Benutzer interaktiv durch die Sektionen.

## Argumente

Der Benutzer hat diesen Befehl aufgerufen mit: $ARGUMENTS

Falls ein Projektname als Argument übergeben wurde, verwende ihn direkt. Andernfalls frage zuerst nach dem Projektnamen.

## Vorgehen

Gehe die folgenden Sektionen **einzeln nacheinander** durch. Stelle für jede Sektion gezielte Fragen und fasse die Antworten zusammen, bevor du zur nächsten Sektion übergehst. Fasse dich kurz – du bist Moderator, kein Autor.

### 1. Header
- Projektname (aus Argument oder nachfragen)
- Name des Autors (nachfragen: "Wer erstellt den Entwurf?")

### 2. Problem
Frage: "Welches Problem soll gelöst werden? Beschreibe die aktuelle Situation und was daran schlecht ist."

Hilfestellung falls nötig:
- Was passiert gerade, das nicht sein sollte?
- Wer ist betroffen?
- Was sind die Folgen des Problems?

### 3. Appetit
Frage nach den drei Aspekten als Gesprächsleitfaden (nicht als Aufzählung übernehmen):
- Warum soll das Problem gelöst werden? (z.B. Request-Count, Systemdringlichkeit, strategische Bedeutung)
- Wieviel Aufwand soll investiert werden? (2 oder 6 Wochen)
- Warum jetzt?

Formuliere den Appetit als zusammenhängenden Fließtext – keine A/B/C-Aufzählung im Output. Der Aufwand soll am ende in eine reigenen zeile stehen.

### 4. Team
Frage nach:
- **Umsetzung** – Wer baut es?
- **Review** – Wer reviewed Code und/oder Design?
- **Begleitung** – Wer begleitet das Projekt (z.B. PM, Stakeholder)?

### 5. Lösung
Frage: "Wie soll das Problem konkret gelöst werden, gegeben den definierten Zeitrahmen?"

Hilfestellung:
- Was ist die einfachste Lösung, die wirklich funktioniert?
- Welche Randfälle gibt es und wie werden sie behandelt?
- Reichen Wireframes/Flowcharts oder braucht es fertige Mocks?

Wichtig: Keine Übergangslösungen. Keine Gold-Plating. Nur was in der Zeit wirklich umsetzbar ist.

### 6. Risiken
Frage: "Wo seht ihr schon jetzt mögliche Schwierigkeiten? Was wäre ein akzeptabler Workaround?"

### 7. Abgrenzung
Frage: "Was ist explizit NICHT Teil dieses Projekts? Welche angrenzenden Bereiche werden bewusst nicht angefasst?"

## Ausgabe

Nachdem alle Sektionen abgearbeitet sind:

1. Fasse den vollständigen Entwurf im folgenden Format zusammen und zeige ihn dem Benutzer zur Bestätigung:

```
# [Projektname]

Entwurf von [Autor]


## Problem

[Inhalt]


## Appetit

[Fließtext, der Begründung, Aufwand und Zeitpunkt zusammenhängend beschreibt]


## Team

Umsetzung: [Namen]
Review (Code / Design): [Namen]
Begleitung: [Namen]


## Lösung

[Inhalt]


## Risiken

[Inhalt]


## Abgrenzung

[Inhalt]
```

2. Frage: "Soll ich den Entwurf speichern? Falls ja, unter welchem Dateinamen?" (Vorschlag: `[projektname-kebab-case]-entwurf.md` im aktuellen Verzeichnis)

3. Speichere die Datei mit dem Write-Tool, wenn der Benutzer zustimmt.
