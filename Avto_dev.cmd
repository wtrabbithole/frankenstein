rmdir wt-wt.ru-dev\aces.vromfs.bin_u /s /q
rmdir wt-wt.ru-dev\char.vromfs.bin_u /s /q
rmdir wt-wt.ru-dev\gui.vromfs.bin_u /s /q
rmdir wt-wt.ru-dev\webUi.vromfs.bin_u /s /q
rmdir wt-wt.ru-dev\mis.vromfs.bin_u /s /q
rem pause
del wt-wt.ru-dev\aces.log
del wt-wt.ru-dev\char.log
del wt-wt.ru-dev\gui.log
del wt-wt.ru-dev\webUi.log
del wt-wt.ru-dev\mis.log
rem pause
vromfs_unpacker.exe aces.vromfs.bin
for /f "delims=" %%x in (aces.vromfs.bin_u\version) do set version=%%x
vromfs_unpacker.exe char.vromfs.bin
for /f "delims=" %%x in (char.vromfs.bin_u\version) do set version=%%x
vromfs_unpacker.exe gui.vromfs.bin
for /f "delims=" %%x in (gui.vromfs.bin_u\version) do set version=%%x
vromfs_unpacker.exe webUi.vromfs.bin
for /f "delims=" %%x in (webUi.vromfs.bin_u\version) do set version=%%x
vromfs_unpacker.exe mis.vromfs.bin
for /f "delims=" %%x in (mis.vromfs.bin_u\version) do set version=%%x
rem TIMEOUT /T 5
rem pause
del aces.vromfs.bin /s /q
del char.vromfs.bin /s /q
del gui.vromfs.bin /s /q
del webUi.vromfs.bin /s /q
del mis.vromfs.bin /s /q
rem TIMEOUT /T 5
rem pause
call full_unpack_aces_log.bat 
rem TIMEOUT /T 5
rem pause
call full_unpack_char_log.bat 
rem TIMEOUT /T 5
rem pause
call full_unpack_gui_log.bat
rem TIMEOUT /T 5
rem pause
call full_unpack_webUi_log.bat
rem TIMEOUT /T 5
call full_unpack_mis_log.bat
rem TIMEOUT /T 5
rem pause
call mov_dev.bat
rem TIMEOUT /T 5
rem pause
cscript //nologo beep.js
call image.bat
rem TIMEOUT /T 17
rem pause
call run_git.bat
rem start "smartgit.exe" "%PROGRAMFILES(x86)%\SmartGit\bin\smartgit.exe"
rem TIMEOUT /T 5
rem pause
