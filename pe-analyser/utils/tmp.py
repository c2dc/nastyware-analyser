import shutil
import os
import sys

if __name__ == '__main__':
    dir = sys.argv[1]

    # rename files that start with G-* to R-*
    for filename in os.listdir(dir):
        if filename.startswith('G-'):
            new_filename = filename.replace('G-', 'R-', 1)
            os.rename(os.path.join(dir, filename), os.path.join(dir, new_filename))
