import shutil
import sys
import os
import subprocess
import argparse


outs = {}

if __name__ == '__main__':
    parser = argparse.ArgumentParser(description='Verify packed PE file')
    parser.add_argument('--directory', help='Directory with packed PE files')

    args = parser.parse_args()

    for root, dirs, files in os.walk(args.directory):
        n = len(files)
        for index, file in enumerate(files):
            print('Processing file {}/{}: {}'.format(index + 1, n, file), end='\r')
            file_path = os.path.join(root, file)
            resp = subprocess.check_output(['file', file_path]).decode('utf-8')
            file_type = resp.split(':')[1].strip()
            if file_type in outs:
                outs[file_type] += 1
            else:
                outs[file_type] = 1

    print()

    for file_type, count in outs.items():
        print(file_type, ' ---- ', count)

