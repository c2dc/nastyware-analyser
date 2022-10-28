#!/usr/bin/env python3

import os
import shutil
import random
import sys

dir_name = sys.argv[1]

for file in os.listdir(dir_name):
    suffix = 'G'
    
    if file.startswith('R'):
        suffix = 'R'
    
    if file.endswith('R'):
        suffix = 'R'

    new_name = ''.join(random.choice('0123456789ABCDEF') for i in range(7))

    while (os.path.exists(f'./{dir_name}/{new_name}-G') or os.path.exists(f'./{dir_name}/{new_name}-R')):
        new_name = ''.join(random.choice('0123456789ABCDEF') for i in range(7))

    shutil.move(f'./{dir_name}/{file}', f'./{dir_name}/{suffix}-{new_name}')