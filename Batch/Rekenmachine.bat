@echo off
:: Door Senna Beerens

setlocal enabledelayedexpansion

cls
echo ================================
echo       Batch Rekenmachine
echo ================================
echo.

:: Vraag de gebruiker om de eerste waarde
set /p num1=Voer het eerste getal in: 

:: Vraag de gebruiker om de tweede waarde
set /p num2=Voer het tweede getal in: 

:: Vraag de gebruiker om de bewerking te kiezen
echo.
echo Kies een bewerking:
echo 1. Optellen
echo 2. Aftrekken
echo 3. Vermenigvuldigen
echo 4. Delen
set /p keuze=Maak je keuze (1-4): 

:: Afhankelijk van de keuze, voer de juiste bewerking uit
if "%keuze%"=="1" (
    set /a result=!num1! + !num2!
    echo Het resultaat van !num1! + !num2! is: !result!
) else if "%keuze%"=="2" (
    set /a result=!num1! - !num2!
    echo Het resultaat van !num1! - !num2! is: !result!
) else if "%keuze%"=="3" (
    set /a result=!num1! * !num2!
    echo Het resultaat van !num1! * !num2! is: !result!
) else if "%keuze%"=="4" (
    if !num2!==0 (
        echo Fout: Delen door nul is niet toegestaan!
    ) else (
        set /a result=!num1! / !num2!
        echo Het resultaat van !num1! / !num2! is: !result!
    )
) else (
    echo Ongeldige keuze! Probeer het opnieuw.
)

pause


