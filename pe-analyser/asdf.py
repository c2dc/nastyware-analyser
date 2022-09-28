import shutil
import os
import sys
import random

# for each file in executable-functions-2
for file in os.listdir('./executable-functions'):
    # if random % 2 == 0
    if random.randint(0, 1) == 0:
        # move file to executable-functions
        shutil.move(f'./executable-functions/{file}', './executable-functions-2')