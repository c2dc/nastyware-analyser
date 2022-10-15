import os
import sys
from itertools import combinations
import multiprocessing
import random
import shutil

def foo(comb):
    for file in os.listdir('./executable-functions-test'):
        with open(os.path.join('./executable-functions-test', file)) as f:
            if set(f.read().splitlines()).issuperset(set(comb)):
                return False
    return True

if __name__ == '__main__':
    
    with open('./analysis/cluster-common-functions.txt') as f:
        common_functions = set(f.read().splitlines())

    for i in range(len(common_functions), 2, -1):
        print(f'\ri = {i}', end='')
        
        # run for in parallel
        with multiprocessing.Pool() as pool:
            result = pool.map(foo, combinations(common_functions, i))
            if True in result:
                print(f'\r{i} functions are enough')
                print(' '.join(list(combinations(common_functions, i))[result.index(True)]))
                break
                        
            