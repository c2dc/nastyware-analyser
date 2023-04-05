import os
import argparse
import pandas as pd

parse = argparse.ArgumentParser()
parse.add_argument('--microsoft-descriptions_directory', type=str, default='/archive/files/microsoft-docs-functions-descriptions/', help='Directory where the descriptions are stored')
parse.add_argument('--from-directory', type=str, default='', help='Directory where the original files are stored')
parse.add_argument('--to-directory', type=str, default='', help='Directory where the new files will be stored')

args = parse.parse_args()

DIR = args.microsoft_descriptions_directory

FROM_DIR = args.from_directory
TO_DIR = args.to_directory

functions = {}
num_filenames = len(os.listdir(DIR))
for i, filename in enumerate(os.listdir(DIR)):
    df = pd.read_csv(DIR + filename)
    print(f'Processing ({i}/{num_filenames}) {filename} with {len(df)} functions                             ', end='\r')
    for index, row in df.iterrows():
        if row['name'] in functions:
            print(f'Found duplicate function {row["name"]}                             ')
            continue
        if row['description'] == '':
            print(f'Found empty description for {row["name"]}                          ')
            continue
        functions[row['name']] = row['description']


num_filenames = len(os.listdir(FROM_DIR))
for i, file in enumerate(os.listdir(FROM_DIR)):
    print(f'Processing ({i}/{num_filenames}) {file}                             ', end='\r')    
    with open(os.path.join(TO_DIR, file), 'w') as f:
        for line in open(os.path.join(FROM_DIR, file), 'r').readlines():
            lib, func = line.strip().split(' ')
            if func in functions:
                f.write(f'{functions[func]}\n')