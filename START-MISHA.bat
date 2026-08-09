@echo off
title Misha's Adventures Launcher
cd /d "%~dp0"
if not exist "node_modules\vite\bin\vite.js" (
  echo Installing project dependencies...
  call npm install
  if errorlevel 1 (
    echo.
    echo Installation failed. Check that Node.js is installed.
    pause
    exit /b 1
  )
)
echo Starting Misha's Adventures...
start "" /min powershell.exe -NoProfile -WindowStyle Hidden -Command "Start-Sleep -Seconds 3; Start-Process 'http://127.0.0.1:4173'"
echo.
echo Keep this window open while playing.
echo The game will open at http://127.0.0.1:4173
echo.
call npm run dev -- --host 127.0.0.1 --port 4173
if errorlevel 1 (
  echo.
  echo The server could not start. Copy the error above and send it to the developer.
  pause
)
