@echo off
setlocal
set "PAGE=%~1"
if "%PAGE%"=="" set "PAGE=youtube-full-sync.html"
cd /d "%~dp0"

where node >nul 2>nul
if %ERRORLEVEL% EQU 0 (
    node serve.js "%PAGE%"
    goto :end
)

where python >nul 2>nul
if %ERRORLEVEL% EQU 0 (
    echo Node.js was not found - starting a local Python server instead...
    start "" /b python -m http.server 8087 --bind 127.0.0.1
    timeout /t 2 >nul
    start "" "http://127.0.0.1:8087/%PAGE%"
    echo.
    echo Keep this window open while you use the app.
    echo Press any key to stop the server...
    pause >nul
    goto :end
)

echo.
echo  Node.js or Python is required for inline YouTube playback.
echo  YouTube blocks embeds opened with file:// (Error 153).
echo.
echo  Install Node.js from https://nodejs.org (recommended)
echo  or Python from https://python.org, then run this file again.
echo.
start "" "%~dp0%PAGE%"
pause
:end
endlocal
