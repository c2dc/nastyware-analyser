import sys
import glob
import numpy as np
import os
import pandas as pd
import pefile

# TODO: Refazer função
def export_samples_import(input_directory, output_directory, malware=False):
    filesPath = glob.glob(input_directory + "*")
    nameFiles = os.listdir(input_directory)
    index = 0
    count = 0
    for filePath in filesPath:
        df = pd.DataFrame()
        pe = pefile.PE(filePath)

        try:
            for entry in pe.DIRECTORY_ENTRY_IMPORT:
                for function in entry.imports:
                    if function.name != None:
                        df.loc[count, 'Dll'] = entry.dll
                        df.loc[count, 'Function'] = function.name
                        count += 1

            if malware:
                output = output_directory + "RANS-" + nameFiles[index]
            else:
                output = output_directory + "GOOD-" + nameFiles[index]

            with open(output, 'w', newline='\r\n') as f:
                f.write(df.to_string(header=False, index=False))

        except AttributeError:
            print("File", filePath, "does not have imports.")

        index += 1
        count = 0

