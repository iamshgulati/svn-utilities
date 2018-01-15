@echo off

cls
echo == Launching Scripts Sequence...

echo. ++ Launching Cleanup
call C:\Data\Shubham\Work\GitHub\svn-utilities\GDSP_SVN_Cleanup.bat
echo. ++ Cleanup Done

echo. ++ Launching Update
call C:\Data\Shubham\Work\GitHub\svn-utilities\GDSP_SVN_Update.bat
echo. ++ Update Done

echo. ++ Sequence Finished
