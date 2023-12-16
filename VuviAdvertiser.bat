@echo off
setlocal enabledelayedexpansion
set KEY=FlowzIsGay

echo.
echo Enter your key:
set /p input=

if %input%==%KEY% (
    echo.
    echo Key Accepted. Proceeding with the advertiser...
    timeout /t 3 /nobreak >nul
    call :CheckModules
) else (
    echo.
    echo Invalid Key. Please try again.
    timeout /t 3 /nobreak >nul
)



:CheckModules
if not exist "node_modules" (
    echo Node modules folder not found. Installing discord.js-selfbot-v13@latest...
    call :InstallModules
) else (
    echo Node modules folder found. Continuing with Advertise.js...
    node Advertise.js
)


:InstallModules
npm install discord.js-selfbot-v13@latest
if errorlevel 1 (
    echo Installation failed. Please check npm and try again.
) else (
    echo Installation successful. Running Advertise.js...
    node Advertise.js
)
