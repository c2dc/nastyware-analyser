import os
import sys


if __name__ == '__main__':
    all_functions = set()
    for file in os.listdir('executable-functions'):
        with open(os.path.join('executable-functions', file)) as f:
            all_functions.update(f.read().splitlines())

    # exclude lines
    for file in os.listdir('cluster'):
        with open(os.path.join('cluster', file)) as f:
            all_functions.difference_update(f.read().splitlines())

    for line in all_functions:
        print(line)