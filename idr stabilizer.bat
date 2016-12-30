@ECHO OFF
Set crashes=0
:start
cls
SET MyProcess=notepad.exe
echo # of fixed failures (%crashes%)
TASKLIST | FINDSTR /I "%MyProcess%"
IF ERRORLEVEL 1 (GOTO :run) ELSE (ECHO "%MyProcess%" restarted)
GOTO :start

:run
CALL "C:\Windows\system32\notepad.exe"
set /A crashes=crashes+1
GOTO :start