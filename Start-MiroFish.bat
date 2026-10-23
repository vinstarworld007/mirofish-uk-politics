@echo off
rem Starts the MiroFish backend (port 5001) and frontend (port 3000), then opens the browser.
set "PATH=%PATH%;%APPDATA%\Python\Python312\Scripts"
cd /d "%~dp0"
start "" http://localhost:3000
npm run dev
