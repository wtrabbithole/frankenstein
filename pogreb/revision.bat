@echo off
if not "%cd:~-1%"=="\" set "cd=%cd%\"
(for /f delims^= %%i in ('dir /b /s /a-d') do (
set "file=%%i"
call echo %%file:%cd%=%%
)) > 1.txt