#!/usr/bin/env python3

import sys
from itertools import combinations
from pe_analyser.progress_bar import ProgressBar
import json
import os

def files_intersections(files):
    data = []
    for f in files:
        with open(f) as inp:
            lines = set(line.rstrip() for line in  inp)
            data.append(lines)

    common_lines = data[0].intersection(*data[1:])

    return common_lines

def combination_two_files(files):
    for f1, f2 in combinations(files, 2):
        with open(f1) as inp1, open(f2) as inp2:
            print (set(line.rstrip() for line in inp1).intersection(map(str.rstrip, inp2)))

def group_all_files(files):
    data = set()
    for f in files:
        with open(f) as inp:
            lines = set(line.rstrip() for line in  inp)
            data.update(lines)

    return list(data)

if __name__ == '__main__':
    files_dir = sys.argv[1]
    files = os.listdir(files_dir)

    similarities = {}    

    nfiles = len(files)
    sys.stdout.write('\nParsing files...\n')

    progress_bar = ProgressBar(nfiles)
    for file in files:
        with open(os.path.join(files_dir, file), 'r') as f:
            for line in (line.rstrip() for line in f):
                if not similarities.get(line):
                    similarities[line] = { 'goodware': [], 'malware': [] }
                
                if file.startswith('G'):
                    similarities[line]['goodware'].append(file)
                elif file.startswith('R'):
                    similarities[line]['malware'].append(file)

        progress_bar.increment()

    with open('similarities.json', 'w') as out:
        json.dump(similarities, out, indent=4)
    