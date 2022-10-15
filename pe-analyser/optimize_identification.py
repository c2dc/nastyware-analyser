import os
import sys
from itertools import combinations
import multiprocessing
import random
import shutil

if __name__ == '__main__':
    
    plus_functions = set(open('analysis/plus_functions.txt').read().splitlines())
    plus_functions_len = len(plus_functions)
    
    # minus_functions = set(open('analysis/minus_functions.txt').read().splitlines())
    minus_functions = set()
    minus_functions_len = len(minus_functions)

    other_fnames = os.listdir('executable-functions')
    other_fnames_len = len(other_fnames)

    cluster_fnames = os.listdir('cluster')
    cluster_fnames_len = len(cluster_fnames)

    done_with_minus = True
    removed_function = ''

    for iteration in range(plus_functions_len + minus_functions_len):
        print(f'Iteration {iteration}')
        count_in_other = 0
        count_malware_in_other = 0
        count_goodware_in_other = 0

        count_in_cluster = 0
        count_malware_in_cluster = 0
        count_goodware_in_cluster = 0

        if not done_with_minus:
            if not minus_functions:
                done_with_minus = True
                continue
            removed_function = minus_functions.pop()
        else:
            removed_function = plus_functions.pop()

        for file in other_fnames:
            file_set = set(open(os.path.join('executable-functions', file)).read().splitlines())
            intersection_plus = plus_functions.intersection(file_set)
            intersection_minus = minus_functions.intersection(file_set)

            if len(intersection_plus) == len(plus_functions) and len(intersection_minus) == 0:
                if file.startswith('R-'):
                    count_malware_in_other += 1
                else:
                    count_goodware_in_other += 1
                count_in_other += 1

        for file in cluster_fnames:
            file_set = set(open(os.path.join('cluster', file)).read().splitlines())
            intersection_plus = plus_functions.intersection(file_set)
            intersection_minus = minus_functions.intersection(file_set)

            if len(intersection_plus) == len(plus_functions) and len(intersection_minus) == 0:
                if file.startswith('R-'):
                    count_malware_in_cluster += 1
                else:
                    count_goodware_in_cluster += 1
                count_in_cluster += 1


        print()

        malware_in_other = count_malware_in_other / count_in_other
        goodware_in_other = count_goodware_in_other / count_in_other
        malware_in_cluster = count_malware_in_cluster / count_in_cluster
        goodware_in_cluster = count_goodware_in_cluster / count_in_cluster

        if not done_with_minus and count_goodware_in_other >= 1:
            done_with_minus = True
            print('Done with minus functions')
            minus_functions.add(removed_function)
            continue
        
        if done_with_minus and count_goodware_in_other >= 1:
            print('Done with plus functions')
            break
        
        print('Status:')
        print(f'Plus functions remaining: {len(plus_functions)}')
        print(f'Minus functions remaining: {len(minus_functions)}')
        print()
        print(f'Identified in other: {count_in_other} / {other_fnames_len} = {count_in_other/other_fnames_len}')
        print(f'Malware in other: {count_malware_in_other} / {count_in_other} = {malware_in_other}')
        print(f'Goodware in other: {count_goodware_in_other} / {count_in_other} = {goodware_in_other}')
        print()
        print(f'Identified in cluster: {count_in_cluster} of {cluster_fnames_len}')
        print(f'Malware in cluster: {count_malware_in_cluster} / {count_in_cluster} = {malware_in_cluster}')
        print(f'Goodware in cluster: {count_goodware_in_cluster} / {count_in_cluster} = {goodware_in_cluster}')
        print()
    
    with open('analysis/optimal_plus_functions.txt', 'w') as f:
        f.write('\n'.join(plus_functions))
    with open('analysis/optimal_minus_functions.txt', 'w') as f:
        f.write('\n'.join(minus_functions))
