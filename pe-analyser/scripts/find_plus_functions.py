import os
import sys
from itertools import combinations
import multiprocessing
import random
import shutil

if __name__ == '__main__':
    
    file_sets = []

    for file in os.listdir('cluster'):
        file_sets.append(set(open('cluster/' + file).read().splitlines()))
    
    intersection = set.intersection(*file_sets)

    with open('analysis/blackcat-cluster-intersection.txt', 'w') as f:
        for item in intersection:
            f.write("%s\n" % item)

