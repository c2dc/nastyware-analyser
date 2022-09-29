#!/usr/bin/env python3

import os
import argparse
import shutil

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
        os.system(f'./damicore -n ../../{args.folder}')
        os.chdir('../../')
        shutil.copyfile(f'./damicore/bin/outfile-{args.folder}', f'./tree.newick')
    elif args.damicore_version == DAMICORE_VERSION_PYTHON:
        print('Using Python version of Damicore...')
        ret = os.system(f'./damicore-python/damicore.py {args.folder} --ncd-output ./damicore-python/results/ncd-matrix.phylip --format phylip --tree-output ./damicore-python/results/tree.newick --graph-image ./damicore-python/results/tree-image.png --output ./damicore-python/results/final.clusters --compress ppmd')
        if ret != 0:
            print('Error while running Damicore')
            exit(1)
        shutil.copyfile('damicore-python/results/tree.newick', './tree.newick')

    os.system('smot color leaf -P -p "." "#909090" -p "R-*" "#FF0000" -p "G-*" "#0000FF" tree.newick \
                | smot color pull \
                | smot filter --factor-by-capture="(R|G)" --some-match="R" --color="#FF0000" \
                | smot filter --factor-by-capture="(R|G)" --some-match="G" --color="#0000FF" \
                | smot color leaf -P -p "." "#909090"> tree.nexus')
    
    # os.system('figtree ./tree.nexus')

    