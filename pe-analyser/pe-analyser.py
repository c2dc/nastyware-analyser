#!/usr/bin/env python3

import os
import argparse

from pe_analyser.file_operation import remove_empty_imports, slice_filenames
from pe_analyser.validator.valid_folder import valid_folder

DAMICORE_VERSION_C = 'c'
DAMICORE_VERSION_PYTHON = 'python'

if __name__== '__main__':
    parser = argparse.ArgumentParser(description='Nastyware Analyser')

    parser.add_argument('--damicore_version', type=str, help='Damicore version', choices=[DAMICORE_VERSION_C, DAMICORE_VERSION_PYTHON], default=DAMICORE_VERSION_PYTHON)
    parser.add_argument('--folder', type=valid_folder, required=True, help='Folder with files to analyse')

    args = parser.parse_args()

    print('Removing samples with empty imports...')
    remove_empty_imports(args.folder)

    if args.damicore_version == DAMICORE_VERSION_C:
        print('Using C version of Damicore...')
        slice_filenames(args.folder)
        os.chdir('./damicore/bin/')
        os.system(f'./damicore ../../{args.folder}')
        os.chdir('../../')
    elif args.damicore_version == DAMICORE_VERSION_PYTHON:
        print('Using Python version of Damicore...')
        ret = os.system(f'./damicore-python/damicore.py {args.folder} --ncd-output ./damicore-python/results/ncd-matrix.phylip --format phylip --tree-output ./damicore-python/results/tree.newick --graph-image ./damicore-python/results/tree-image.png --output ./damicore-python/results/final.clusters --compress ppmd')
        if ret != 0:
            print('Error while running Damicore')
            exit(1)
        os.system('figtree ./damicore-python/results/tree.newick')
