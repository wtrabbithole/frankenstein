@echo off
for /R char.vromfs.bin_u %%f in (*.blkxx) do (
	echo "%%~f"
	del "%%~f"
)

for /R char.vromfs.bin_u %%f in (*.blk) do (
	echo "%%~f"
	del "%%~f"
)


for /R aces.vromfs.bin_u %%f in (*.blkxx) do (
	echo "%%~f"
	del "%%~f"
)

for /R aces.vromfs.bin_u %%f in (*.blk) do (
	echo "%%~f"
	del "%%~f"
)
