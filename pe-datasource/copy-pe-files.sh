# create directory /archive/pe-files if the directory does not exist
if [ ! -d /archive/pe-files-3 ]; then
  mkdir /archive/pe-files-3
fi

# Recursively Copy PE32 files from /mnt to /archive/pe-files that are not already present
find /mnt -type f -exec file {} \; | grep "PE32" | cut -d: -f1 | xargs -I {} cp {} /archive/pe-files-3