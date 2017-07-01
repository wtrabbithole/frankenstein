@echo off
for /R wwdata.vromfs.bin_u %%f in (*.blk) do (
	echo "%%~f"
	blk_unpack.exe "%%~f"
	IF %ERRORLEVEL% EQU 0 IF %%~xf == .blk del "%%~f"
	)

echo "---------------------------------------------------------------"
for /R wwdata.vromfs.bin_u %%f in (*.blkxx) do (
	echo "%%~f"
	del "%%~f"
)
@Echo WWDATA_UNPACKED
exit /b