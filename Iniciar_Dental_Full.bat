@echo off
REM Obtiene la ruta donde está este .bat (C:\DentalFull\)
set BASE=%~dp0Apexo

REM 1) Iniciar el backend
cd /d "%BASE%\backend"
start "" pocketbase.exe serve

REM Espera 2 segundos
timeout /t 2 > nul

REM 2) Iniciar la app personalizada
cd /d "%BASE%\frontend"
start "" DentalFull.exe
