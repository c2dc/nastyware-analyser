import sys

if __name__ == '__main__':
    files = sys.argv[1:]

    for file in files:
        with open(file, 'r') as f:
            lines = f.readlines()
        
        with open(file, 'w') as f:
            for line in lines:
                entry, function = line.split(' ', 1)
                f.write(entry.lower() + ' ' + function)
            