@echo off
setlocal enabledelayedexpansion
title Sysinfo (test)

echo System Info show . . .

echo [!] System Information: Gathering system informations from %computername% by %username% at %date% %time% > .\logs\SYSINFO.log
for /f "tokens=*" %%a in ('systeminfo') do (
    echo %%a
)

pause
