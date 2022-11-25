# Define directory name C:\pe-files\
$peFilesDir = "C:\pe-files\"

# Make the directory C:\pe-file\ if it does not exist
if (!(Test-Path -Path $peFilesDir)) {
    New-Item -Path $peFilesDir -ItemType Directory
}

# Clear the directory if there is anything in it
if (Get-ChildItem -Path $peFilesDir -File) {
    Get-ChildItem -Path $peFilesDir -File | Remove-Item
}

# Copy all files from C: to C:\pe-files\ if first two bytes are 0x4d5a
Get-ChildItem -Path C:\ -Recurse -File -Exclude $peFilesDir | Where-Object {
    $bytes = Get-Content -Path $_.FullName -Encoding Byte -ReadCount 1
    $bytes[0] -eq "77" -and $bytes[1] -eq "90"
} | Copy-Item -Destination $peFilesDir -Force

# Compress the directory C:\pe-files\ to C:\pe-files.zip
Compress-Archive -Path $peFilesDir -DestinationPath $peFilesDir.zip
