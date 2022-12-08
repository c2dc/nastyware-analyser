# create directory /archive/pe-files if the directory does not exist
if [ ! -d /archive/pe-files ]; then
  mkdir /archive/pe-files
fi

# Recursively Copy files from /mnt to /archive/pe-files that start with 0x4d5a
find /mnt -type f -exec file {} \; | grep "PE32" | cut -d: -f1 | xargs -I {} cp {} /archive/pe-files
