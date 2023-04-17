
import os
import sys
import time
import shutil
import random
import numpy as np
import pandas as pd

def count_files_in_directories(directories):
    total_files = 0
    for directory in directories:
        total_files += len(os.listdir(directory))
    return total_files

def copy_random_files(source_directories, destination_train_directory, destination_test_directory, percentage):
    for source_directory in source_directories:
        files = os.listdir(source_directory)
        for file in files:
            if random.random() < percentage:
                shutil.copy(os.path.join(source_directory, file), destination_train_directory)
            else:
                shutil.copy(os.path.join(source_directory, file), destination_test_directory)

def clean_working_dir(working_dir):
    # Remove all files from test-set/raw-import-files
    dir = os.path.join(working_dir, 'test-set/raw-import-files/')
    for file in os.listdir(dir):
        os.remove(os.path.join(dir, file))
    
    # Remove all files from train-set/raw-import-files
    dir = os.path.join(working_dir, 'train-set/raw-import-files/')
    for file in os.listdir(dir):
        os.remove(os.path.join(dir, file))

    # Remove all files from train-set/formated-import-files
    dir = os.path.join(working_dir, 'train-set/formated-import-files/')
    for file in os.listdir(dir):
        os.remove(os.path.join(dir, file))
        
    
