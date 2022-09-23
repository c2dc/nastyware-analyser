# PE file extensions:
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

# Copy files recursively with PE extensions to the directory C:\pe-files\
Get-ChildItem -Path C:\ -Recurse -File -Exclude C:\pe-files\ | Where-Object {$_.Name -like '*.exe' -or $_.Name -like '*.scr' -or $_.Name -like '*.sys' -or $_.Name -like '*.dll' -or $_.Name -like '*.fon' -or $_.Name -like '*.cpl' -or $_.Name -like '*.iec' -or $_.Name -like '*.ime' -or $_.Name -like '*.rs' -or $_.Name -like '*.tsp' -or $_.Name -like '*.mz'} | Copy-Item -Destination C:\pe-files\

# Compress generated archive
Compress-Archive -Path C:\pe-files\ -DestinationPath C:\pe-files.zip
