# Simpele Rekenmachine in Batch

Deze eenvoudige **batch rekenmachine** ondersteunt vier basisbewerkingen: optellen, aftrekken, vermenigvuldigen en delen.

## Uitleg

### Instellingen:
- **`@echo off`**: Verbergt de commando-uitvoer in het batchbestand, waardoor de uitvoer er netter uitziet.
- **`setlocal enabledelayedexpansion`**: Zorgt ervoor dat variabelen tijdens de uitvoering van het script correct worden bijgewerkt en weergegeven.

### Invoer van de Gebruiker:
- De gebruiker wordt gevraagd om twee getallen in te voeren (`num1` en `num2`).
- De gebruiker kiest vervolgens een bewerking uit de volgende opties:
  1. Optellen
  2. Aftrekken
  3. Vermenigvuldigen
  4. Delen

### Rekenkundige Bewerkingen:
- Afhankelijk van de keuze van de gebruiker, voert het script de juiste bewerking uit met behulp van de `set /a` opdracht. Dit voert de rekensom uit en geeft het resultaat weer.

### Delen door Nul:
- Er is een controle ingebouwd om te voorkomen dat de gebruiker probeert door nul te delen, wat anders een fout zou veroorzaken.

## Gebruik

1. **Sla het bestand op** met de extensie `.bat`, bijvoorbeeld `rekenmachine.bat`.
2. **Voer het bestand uit** door erop te dubbelklikken.
3. **Voer twee getallen in** en kies een bewerking om het resultaat te zien.

## Voorbeeld:

Wanneer je het bestand uitvoert, krijg je een prompt die er als volgt uitziet:


![516B1143-D9F9-45C0-9440-EBC6404D1ED1](https://github.com/user-attachments/assets/134963e1-1087-417f-af6b-4fc5e9dc20f3)
