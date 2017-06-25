@echo off
echo Create webUi.log
echo webUi>>%~dp0webUi.log
for /R webUi.vromfs.bin_u %%f in (*.blk) do (
	echo "%%~f"
	blk_unpack.exe "%%~f"
	IF %ERRORLEVEL% EQU 0 IF %%~xf == .blk del "%%~f"
	)

echo "---------------------------------------------------------------"
for /R webUi.vromfs.bin_u %%f in (*.blkxx) do (
	echo "%%~f"
	del "%%~f"
)
exit /b