rmdir wt-wt.ru-relise\aces.vromfs.bin_u /s /q
rmdir wt-wt.ru-relise\char.vromfs.bin_u /s /q
rmdir wt-wt.ru-relise\gui.vromfs.bin_u /s /q
rmdir wt-wt.ru-relise\webUi.vromfs.bin_u /s /q
rmdir wt-wt.ru-relise\mis.vromfs.bin_u /s /q
del wt-wt.ru-relise\aces.log
del wt-wt.ru-relise\char.log
del wt-wt.ru-relise\gui.log
del wt-wt.ru-relise\webUi.log
del wt-wt.ru-relise\mis.log
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
TIMEOUT /T 5
del aces.vromfs.bin /s /q
del char.vromfs.bin /s /q
del gui.vromfs.bin /s /q
del webUi.vromfs.bin /s /q
del mis.vromfs.bin /s /q
TIMEOUT /T 5
echo n|start "" /wait %comspec% /c %~dp03.0full_unpack_aces_log.bat 
TIMEOUT /T 5
echo n|start "" /wait %comspec% /c %~dp03.1full_unpack_char_log.bat 
TIMEOUT /T 5
echo n|start "" /wait %comspec% /c %~dp03.2full_unpack_gui_log.bat
TIMEOUT /T 5
echo n|start "" /wait %comspec% /c %~dp03.3full_unpack_webUi_log.bat
TIMEOUT /T 5
echo n|start "" /wait %comspec% /c %~dp03.5full_unpack_mis_log.bat
TIMEOUT /T 5
echo n|start "" /wait %comspec% /c %~dp0mov_relise.bat
TIMEOUT /T 5
cscript //nologo beep.js
call image.bat
TIMEOUT /T 17
start "smartgit.exe" "C:\Program Files (x86)\SmartGit\bin\smartgit.exe"
TIMEOUT /T 5
