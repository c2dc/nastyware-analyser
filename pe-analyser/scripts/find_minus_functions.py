import os
import sys
from itertools import combinations
import multiprocessing
import random
import shutil

if __name__ == '__main__':

    others_set = set()

    for file in os.listdir('executable-functions'):
        others_set.update(set(open('executable-functions/' + file).read().splitlines()))
    
    cluster_set = set()
    for file in os.listdir('cluster'):
        cluster_set.update(set(open('cluster/' + file).read().splitlines()))

    others_minus_cluster = others_set - cluster_set

    with open('analysis/others-minus-cluster.txt', 'w') as f:
        for item in others_minus_cluster:
            f.write("%s\n" % item)