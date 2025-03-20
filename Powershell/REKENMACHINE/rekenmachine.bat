@echo off
cls
set "ps1pad=%~dp0Rekenmachine.ps1"

if not exist "%ps1pad%" (
    echo Het PowerShell-script "%ps1pad%" bestaat niet! Controleer het bestand en probeer het opnieuw.
    pause
    exit /b
)

start /B PowerShell -WindowStyle Hidden -ExecutionPolicy Bypass -File "%ps1pad%"
