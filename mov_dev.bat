@echo off
for /F %%i in (list.txt) do (
  move /Y %%i wt-wt.ru-dev
)
TIMEOUT /T 5
exit /b