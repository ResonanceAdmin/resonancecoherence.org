@echo off
setlocal

set "SITE_ROOT=C:\resonance\website\ResonanceCoherence.org"
set "SITE_PORT=4173"
set "SITE_URL=http://127.0.0.1:%SITE_PORT%/"

netstat -ano | findstr /R /C:":%SITE_PORT% .*LISTENING" >nul
if errorlevel 1 (
  start "Resonance Org Site" /min cmd /k "cd /d "%SITE_ROOT%" && python -m http.server %SITE_PORT% --bind 127.0.0.1"
  powershell -NoProfile -Command "Start-Sleep -Seconds 2" >nul
)

start "" "%SITE_URL%"

endlocal
