@echo off
for /R char.vromfs.bin_u %%f in (*.blk) do (
	echo "%%~f"
	blk_unpack.exe "%%~f"
	IF %ERRORLEVEL% EQU 0 IF %%~xf == .blk del "%%~f"
	)

echo "---------------------------------------------------------------"
for /R char.vromfs.bin_u %%f in (*.blkxx) do (
	echo "%%~f"
	del "%%~f"
)
exit /b