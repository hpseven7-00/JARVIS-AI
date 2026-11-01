@echo off
cd /d "%~dp0"
where py >nul 2>nul
if %errorlevel%==0 (
  start "" http://localhost:5500
  py -m http.server 5500
) else (
  where python >nul 2>nul
  if %errorlevel%==0 (
    start "" http://localhost:5500
    python -m http.server 5500
  ) else (
    echo Python 3 nao encontrado. Instale Python ou execute: python -m http.server 5500
    pause
  )
)
