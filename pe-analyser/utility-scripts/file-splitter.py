
import sys

if __name__ == '__main__':
    files = sys.argv[1:]

    for file in files:
        with open(file, 'r') as f:
            lines = f.readlines()
        
        for line in lines:
            entry, function = line.split()
            entry = entry[2:][:-1]
            function = function[2:][:-1]
            print(entry, function)