@echo off
setlocal enabledelayedexpansion
title LogAnal

echo Log Analyzer

set /p logFilePath=Enter the path to your log file: 

if not exist "!logFilePath!" (
    echo File not found. Exiting.
    exit /b 1
)

echo [!] Log analyzer: Checking a log file, executed by %username% at %date% %time% > .\logs\LogAnal.log
echo Analyzing log file...

for /f "tokens=*" %%a in ('type "!logFilePath!" ^| find "specific-pattern"') do (
    echo %%a
)

pause
