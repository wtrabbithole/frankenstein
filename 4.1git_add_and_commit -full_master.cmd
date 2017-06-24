git add wt-wt.ru-relise -f
for /f "delims=" %%x in (wt-wt.ru-relise\aces.vromfs.bin_u\version) do set version=%%x
git commit -m "%version%"