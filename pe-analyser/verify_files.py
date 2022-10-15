import os
import sys
from itertools import combinations
import multiprocessing
import random
import shutil

if __name__ == '__main__':
    
    plus_functions = set(open('analysis/plus_functions.txt').read().splitlines())
    minus_functions = set(open('analysis/minus_functions.txt').read().splitlines())

    other_files = os.listdir('executable-functions')
    other_files_len = len(other_files)

    cluster_files = os.listdir('cluster')
    cluster_files_len = len(cluster_files)

    count_identify_in_other = 0
    count_identify_in_cluster = 0

    i = 0

    for file in other_files:
        print(f'\rProcessing file {i} of {other_files_len} ', end='')
        file_set = set(open(os.path.join('executable-functions', file)).read().splitlines())
        intersection_plus = plus_functions.intersection(file_set)
        intersection_minus = minus_functions.intersection(file_set)

        if len(intersection_plus) == len(plus_functions) and len(intersection_minus) == 0:
            count_identify_in_other += 1
            print(os.path.join('executable-functions', file))
        i += 1
    
    print()

    i = 0

    for file in cluster_files:
        print(f'\rProcessing file {i} of {cluster_files_len} ', end='')
        file_set = set(open(os.path.join('cluster', file)).read().splitlines())
        intersection_plus = plus_functions.intersection(file_set)
        intersection_minus = minus_functions.intersection(file_set)

        if len(intersection_plus) == len(plus_functions) and len(intersection_minus) == 0:
            count_identify_in_cluster += 1
            print(os.path.join('cluster', file))

        i += 1

    print()

    print(f'Identified in other: {count_identify_in_other} of {other_files_len}')
    print(f'Identified in cluster: {count_identify_in_cluster} of {cluster_files_len}')