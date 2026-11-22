@echo off
title hmhstube - A to Z Auto-Sync
cd /d "%~dp0"
echo.
echo  ============================================
echo   hmhstube - A to Z YouTube Auto-Sync
echo  ============================================
echo.
echo  Starting the local server so YouTube embeds
echo  can play inline (fixes Error 153)...
echo.
call "%~dp0launch-page.bat" youtube-full-sync.html
