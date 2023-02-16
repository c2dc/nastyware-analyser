# Program to create move malwares and goodwares to a new directory using certain ratio

import sys
import os
import shutil
import random

def main():
    dir_origin = sys.argv[1]
    dir_dest = sys.argv[2]

    mwr_ratio = 0.05
    
    gwr_count = 0
    mwr_count = 0

    mlwr_list = []

    for file in os.listdir(dir_origin):
        if file.find('G-') != -1:
            shutil.copy(os.path.join(dir_origin, file), os.path.join(dir_dest, file))
            gwr_count += 1
        elif file.find('R-') != -1:
            mlwr_list.append(os.path.join(dir_origin, file))
            mwr_count += 1
    
    new_mwr_count = int(gwr_count * mwr_ratio / (1 - mwr_ratio))

    if new_mwr_count > mwr_count:
        print('Not enough malwares')
        return

    random.shuffle(mlwr_list)

    for i in range(new_mwr_count):
        shutil.copy(mlwr_list[i], os.path.join(dir_dest, os.path.basename(mlwr_list[i]))) 

if __name__ == '__main__':
    main()