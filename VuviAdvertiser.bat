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
    node Advertise.js
) else (
    echo.
    echo Invalid Key. Please try again.
    timeout /t 3 /nobreak >nul
)

