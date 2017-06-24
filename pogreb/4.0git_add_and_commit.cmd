git add aces.vromfs.bin_u -f
git add char.vromfs.bin_u -f
git add mis.vromfs.bin_u -f
git add aces.vromfs.bin -f
git add char.vromfs.bin -f
git add mis.vromfs.bin -f
git add aces.log -f
git add char.log -f
git add mis.log -f
for /f "delims=" %%x in (aces.vromfs.bin_u\version) do set version=%%x
git commit -m "%version%"