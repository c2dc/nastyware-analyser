
import sys
import os
import shutil

if __name__ == '__main__':

    files = sys.argv[1:]

    for file in files:
        file_lines = []

        with open(file, 'r') as f:
            for line in f.readlines():
                file_lines.append(line.split())
        
        with open(file, 'w') as f:
            for line in file_lines:
                lib, func = line
                lib = lib[2:][:-1]
                func = func[2:][:-1]
                f.write(' '.join([lib, func]) + '\n')