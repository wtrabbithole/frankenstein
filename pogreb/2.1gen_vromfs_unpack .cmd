rmdir mis.vromfs.bin_u /s /q
del mis.log
vromfs_unpacker.exe mis.vromfs.bin
for /f "delims=" %%x in (mis.vromfs.bin_u\version) do set version=%%x