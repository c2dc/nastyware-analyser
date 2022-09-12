# PE Files extensions:
# 1.  exe
# 2.  scr
# 3.  sys
# 4.  dll
# 4.  fon
# 5.  cpl
# 6.  iec
# 7.  ime
# 8.  rs
# 9.  tsp
# 10. mz

# Copy files recursively with PE extensions to the directory C:\windows-server-pe-files\
$peFiles = Get-ChildItem -Path C:\windows-server -Recurse -Filter *.exe,*.scr,*.sys,*.dll,*.fon,*.cpl,*.iec,*.ime,*.rs,*.tsp,*.mz
Copy-Item -Path $peFiles -Destination C:\windows-server-pe-files\

# Get-ChildItem -Path C:\ -Recurse -File -Exclude C:\windows-server-pe-files\ | Where-Object {$_.Name -like '*.exe' -or $_.Name -like '*.dll' -or $_.Name -like '*.scr' } | Copy-Item -Destination C:\windows-server-pe-files\

# Compress generated archive
Compress-Archive -Path C:\windows-server-pe-files\ -DestinationPath C:\windows-server-pe-files.zip
