@echo off
setlocal enabledelayedexpansion

set counter=0
set delayMinutes=5

:loop
REM Calculate the delay in seconds
set /a delaySeconds=delayMinutes*60

REM The following line executes the PowerShell command to sleep for the calculated delay in seconds.
powershell -Command "Start-Sleep -Seconds !delaySeconds!"

set /a counter+=delayMinutes
<nul set /p=!counter! minutes have passed.

goto loop