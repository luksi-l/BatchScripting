@echo off
setlocal enabledelayedexpansion
title SwiftSet

goto Main

:Main

cls
echo            SwiftSet
echo.
echo            [1].Install
echo            [2].Search
echo            [3].Uninstall
echo            [4].Exit

set /p Choice=/ 
if %Choice%==1 goto Install
if %Choice%==2 goto Search
if %Choice%==3 goto Uninstall
if %Choice%==4 goto Exit
goto Main
:Install
cls

echo            SwiftSet
echo.
echo            Please enter the ID of the software to install . . .

set /p Installer=/Installer/ 
echo [!] SwiftSet: Installer process executed by %username% at %date% %time% > .\logs\SwiftSet.log
winget install %Installer%

echo Finished!
timeout 10
goto Main
:Search
cls

echo            SwiftSet
echo.
echo            Search for a software!

set /p Searcher=/Searcher/ 
echo [!] SwiftSet: Searcher process executed by %username% at %date% %time% > .\logs\SwiftSet.log
winget search %Searcher%

echo Finished!
timeout 10
goto Main
:Uninstall
cls

echo            SwiftSet
echo.
echo            Please enter the ID of the software to uninstall . . .

set /p Uninstaller=/Uninstaller/ 
echo [!] SwiftSet: Uninstaller process executed by %username% at %date% %time% > .\logs\SwiftSet.log
winget uninstall %Uninstaller%

echo Finished!
timeout 10
goto Main
:Exit
cls

echo            SwiftSet
echo.
echo            See you some other time!
echo.
timeout 10
exit