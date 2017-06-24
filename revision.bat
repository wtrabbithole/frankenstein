@Echo off
Dir /c %~dp0 /B> "%~dp0\logfile.txt"
exit