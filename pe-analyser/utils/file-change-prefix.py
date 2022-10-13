import sys
import os
import shutil

if __name__ == '__main__':
    
    files = sys.argv[1:]

    for file in files:
        if file.find('RANS-') != -1:
            new_file = file.replace('RANS-', 'R-')
            shutil.move(file, new_file)
        elif file.find('GOOD-') != -1:
            new_file = file.replace('GOOD-', 'G-')
            shutil.move(file, new_file)
