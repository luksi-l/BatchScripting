@echo off
setlocal enabledelayedexpansion
title BatchScripting - checkset

REM Specify the paths of the three main files
set "testBatchFile=scripts\LogAnal.bat"
set "applicationFile=scripts\SwiftSet.bat"
set "logFile=scripts\Sysinfo.bat"

REM Function to check if a file exists
:checkFile
if not exist "%1" (
    echo File not found: %1
    set "errorDetected=true"
) else (
    echo File found: %1
)

REM Initialize error flag
set "errorDetected=false"

REM Check the three main files
call :checkFile "%testBatchFile%"
call :checkFile "%applicationFile%"
call :checkFile "%logFile%"

REM Display result
if "%errorDetected%"=="true" (
    echo Errors detected. Please check the specified files.
) else (
    echo All files are present. No errors detected.
)

endlocal
