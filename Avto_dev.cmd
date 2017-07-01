@Echo off
@Echo CLEAN_OLD_FILES_IN_GIT
rmdir wt-wt.ru-dev\aces.vromfs.bin_u /s /q
rmdir wt-wt.ru-dev\char.vromfs.bin_u /s /q
rmdir wt-wt.ru-dev\gui.vromfs.bin_u /s /q
rmdir wt-wt.ru-dev\webUi.vromfs.bin_u /s /q
rmdir wt-wt.ru-dev\mis.vromfs.bin_u /s /q
rmdir wt-wt.ru-dev\wwdata.vromfs.bin_u /s /q
@Echo CLEAN_OLD_LOG_UNPACKER
del wt-wt.ru-dev\aces.log
del wt-wt.ru-dev\char.log
del wt-wt.ru-dev\gui.log
del wt-wt.ru-dev\webUi.log
del wt-wt.ru-dev\mis.log
del wt-wt.ru-dev\wwdata.log
@Echo UNPACK_VROMFS_FILES
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
vromfs_unpacker.exe wwdata.vromfs.bin
for /f "delims=" %%x in (wwdata.vromfs.bin_u\version) do set version=%%x
pause
rem exit /b
@Echo CLEANING_BIN_FILES
del aces.vromfs.bin /s /q
del char.vromfs.bin /s /q
del gui.vromfs.bin /s /q
del webUi.vromfs.bin /s /q
del mis.vromfs.bin /s /q
del wwdata.vromfs.bin /s /q
@Echo UNPACK_BLK_FILES
call full_unpack_aces_log.bat
call full_unpack_char_log.bat
call full_unpack_gui_log.bat
call full_unpack_webUi_log.bat
call full_unpack_mis_log.bat
call full_unpack_wwdata_log.bat
call mov_dev.bat
cscript //nologo beep.js
call image.bat
call run_git.bat
@Echo EXELENT
exit /b
