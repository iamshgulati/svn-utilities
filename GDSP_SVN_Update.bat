@echo off

cls
echo == Initiating system instance variables...
echo. -- Setting the variables...
set SOURCE=C:\Data\CGI\Projects\Vodafone\GDSP
set SVN=C:\Program Files\TortoiseSVN\bin
set CLOSEONEND_LEVEL=2

echo. %SOURCE%
echo. %SVN%
echo. ++ Done setting variables.
echo.

rem echo == Cleaning up local repository
rem echo. -- Running cleanup...
rem "%SVN%\TortoiseProc.exe" /command:cleanup /path:"%SOURCE%" /cleanup /fixtimestamps /vacuum /refreshshell /externals /closeonend:"%CLOSEONEND_LEVEL%" /noui
rem :: /noui /noprogressui
rem echo. ++ Cleanup Done.

echo == Updating source from SVN
echo. -- Running update...
"%SVN%\TortoiseProc.exe" /command:update /path:"%SOURCE%" /closeonend:"%CLOSEONEND_LEVEL%"
echo. ++ Update Done.

echo. -- Cleaning up...
set SOURCE=
set SVN=
echo. ++ Done.

:: /closeonend:0 don't close the dialog automatically 
:: /closeonend:1 auto close if no errors 
:: /closeonend:2 auto close if no errors and conflicts 
:: /closeonend:3 auto close if no errors, conflicts and merges 
:: /closeonend:4 auto close if no errors, conflicts and merges for local operations