@echo off
for /F %%i in (list.txt) do (
  move /Y %%i wt-wt.ru-dev
)
@Echo FILE_TRANCFER_DONE_DEV
exit /b