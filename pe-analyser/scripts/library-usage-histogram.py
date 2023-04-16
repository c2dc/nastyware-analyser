import shutil
import sys
import os
import subprocess
import argparse
import csv
import matplotlib.pyplot as plt
import numpy as np
import seaborn as sns


library_usage = {}

if __name__ == '__main__':
    parser = argparse.ArgumentParser(description='Verify packed PE file')
    parser.add_argument('--directory', help='Directory with packed PE files')

    args = parser.parse_args()

    for files in os.listdir(args.directory):
        print('Processing file: {}'.format(files), end='\r')
        file_path = os.path.join(args.directory, files)
        for line in open(file_path, 'r').readlines():
            lib, func = line.strip().split(' ', 2)
            if lib not in library_usage:
                library_usage[lib] = 1
            else:
                library_usage[lib] += 1
    
    print()

    # Sort by usage
    library_usage = sorted(library_usage.items(), key=lambda x: x[1], reverse=True)
    libraries = [x[0] for x in library_usage]
    usage = [x[1] for x in library_usage]

    # Plot
    plt.figure(figsize=(20, 10))
    plt.bar(libraries, usage)
    plt.xticks(rotation=90)
    plt.show()

