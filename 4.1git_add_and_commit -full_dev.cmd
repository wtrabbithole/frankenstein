git add wt-wt.ru-dev -f
for /f "delims=" %%x in (wt-wt.ru-dev\aces.vromfs.bin_u\version) do set version=%%x
git commit -m "%version%"