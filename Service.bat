@echo off
title Storage auto System Check & Windows Update
echo =================================================
echo Checking and repairing storage drive...
echo =================================================
chkdsk  /f
echo.

echo =================================================
echo Running System File Checker (SFC)...
echo =================================================
sfc /scannow
echo.

echo =================================================
echo Checking for Windows Updates...
echo =================================================
Install-Module PSWindowsUpdate -Force
Import-Module PSWindowsUpdate
Get-WindowsUpdate -Install -AcceptAll -AutoReboot
echo.

echo =================================================
echo Windows Update initiated. Please check Windows Update settings for progress.
echo =================================================
pause
