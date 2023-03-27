import shutil
import sys
import os
import subprocess
import argparse
import csv


outs = {}

if __name__ == '__main__':
    parser = argparse.ArgumentParser(description='Verify packed PE file')
    parser.add_argument('--directory', help='Directory with packed PE files')

    args = parser.parse_args()

    for root, dirs, files in os.walk(args.directory):
        # For each directory in the root directory
        for dir in dirs:
            if dir.startswith('pe-') and not dir.endswith('-f'):
                print('\nProcessing directory: {}'.format(dir))
                outs = {}
                for index, file in enumerate(os.listdir(os.path.join(root, dir))):
                    print('Processing file {}/{}: {}'.format(index + 1, len(os.listdir(os.path.join(root, dir))), file), end='\r')
                    file_path = os.path.join(root, dir, file)
                    resp = subprocess.check_output(['file', file_path]).decode('utf-8')
                    file_type = resp.split(':')[1].strip()
                    if file_type in outs:
                        outs[file_type] += 1
                    else:
                        outs[file_type] = 1
                
                # Write the results "outs" to a csv file
                with open(os.path.join(root, f'{dir}.csv'), 'w') as f:
                    writer = csv.writer(f)
                    for file_type, count in outs.items():
                        writer.writerow([file_type, count])

