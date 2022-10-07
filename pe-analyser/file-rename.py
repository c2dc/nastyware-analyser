#!/usr/bin/env python3

import os
import shutil
import random

for file in os.listdir('executable-functions'):
    prefix = 'G-'
    
    if file.startswith('R'):
        prefix = 'R-'

    new_name = ''.join(random.choice('0123456789ABCDEF') for i in range(7))
    
    while (os.path.exists('./executable-functions/G-' + new_name) or os.path.exists('./executable-functions/R-' + new_name)):
        new_name = ''.join(random.choice('0123456789ABCDEF') for i in range(7))

    shutil.move('./executable-functions/' + file, './executable-functions/' + prefix + new_name)