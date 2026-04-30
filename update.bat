@echo off
title HANN X7 Premium Updater
color 0B
echo.
echo ==================================================
echo             HANN X7 - AUTO UPDATER
echo ==================================================
echo.
echo [+] Menarik pembaruan dari server (Git)...
git pull
echo.
echo [+] Memperbarui modul dependencies (NPM)...
npm install
echo.
echo ==================================================
echo [!] HANN X7 Berhasil Diperbarui 100%%!
echo ==================================================
echo.
pause
