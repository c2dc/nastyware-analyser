import os
import shutil
import sys

if __name__ == '__main__':
    files = sys.argv[1:]

    data = []
    for f in files:
        with open(f) as inp:
            lines = set(line.rstrip() for line in  inp)
            data.append(lines)

    common_lines = data[0].intersection(*data[1:])

    for line in common_lines:
        print(line)