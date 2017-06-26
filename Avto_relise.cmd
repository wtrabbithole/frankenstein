@Echo CLEAN_OLD_FILES_IN_GIT
rmdir wt-wt.ru-relise\aces.vromfs.bin_u /s /q
rmdir wt-wt.ru-relise\char.vromfs.bin_u /s /q
rmdir wt-wt.ru-relise\gui.vromfs.bin_u /s /q
rmdir wt-wt.ru-relise\webUi.vromfs.bin_u /s /q
rmdir wt-wt.ru-relise\mis.vromfs.bin_u /s /q
@Echo CLEAN_OLD_LOG_UNPACKER
del wt-wt.ru-relise\aces.log
del wt-wt.ru-relise\char.log
del wt-wt.ru-relise\gui.log
del wt-wt.ru-relise\webUi.log
del wt-wt.ru-relise\mis.log
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
@Echo CLEANING_BIN_FILES
del aces.vromfs.bin /s /q
del char.vromfs.bin /s /q
del gui.vromfs.bin /s /q
del webUi.vromfs.bin /s /q
del mis.vromfs.bin /s /q
@Echo UNPACK_BLK_FILES
call full_unpack_aces_log.bat 
@Echo ACESS_UNPACKED
call full_unpack_char_log.bat 
@Echo CHAR_UNPACKED
call full_unpack_gui_log.bat
@Echo GUI_UNPACKED
call full_unpack_webUi_log.bat
@Echo WEBUI_UNPACKED
call full_unpack_mis_log.bat
@Echo MIS_UNPACKED
call mov_relise.bat
@Echo FILE_TRACFER_DONE
cscript //nologo beep.js
call image.bat
call run_git.bat
@Echo EXELENT
exit
