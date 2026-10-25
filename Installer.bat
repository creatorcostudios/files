@echo off
setlocal

set "BASE=https://raw.githubusercontent.com/creatorcostudios/files/main"
set "OUT=%~dp0HIJH.bat"

echo Downloading HIJH.bat...
powershell -NoProfile -ExecutionPolicy Bypass -Command ^
  "$ProgressPreference='SilentlyContinue'; (New-Object Net.WebClient).DownloadFile('%BASE%/HIJH.bat', '%OUT%'); Write-Host 'DOWNLOAD COMPLETE'"

echo.
dir /b "%~dp0"
pause
