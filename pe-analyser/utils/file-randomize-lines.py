import sys
import os
import shutil
import random

if __name__ == "__main__":
    
    files = sys.argv[1:]

    for file in files:
        file_lines = []

        with open(file, 'r') as f:
            file_lines = f.readlines()

        random.shuffle(file_lines)

        with open(file, 'w') as f:
            f.write(''.join(file_lines))
