import os
import sys
from itertools import combinations
import multiprocessing
import random
import shutil

if __name__ == '__main__':
    with open('./analysis/cluster-common-functions.txt') as f:
        common_functions = set(f.read().splitlines())

    for file in os.listdir('executable-functions-test'):
        with open(os.path.join('executable-functions-test', file)) as f:
            if len(common_functions.intersection(set(f.read().splitlines()))) == len(common_functions):
                print(file)
                break