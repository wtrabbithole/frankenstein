@echo off
for /F %%i in (list.txt) do (
  move /Y %%i wt-wt.ru-relise
)
@Echo FILE_TRANCFER_DONE_RELISE
exit /b