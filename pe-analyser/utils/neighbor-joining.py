import argparse

def neighbor_joining(file_name):
    

if __name__ == '__main__':
    parser = argparse.ArgumentParser(description='Neighbor joining algorithm')
    parser.add_argument('--file-name', type=str, required=True, help='Distance matrix file name.')

    args = parser.parse_args()

    file_name = args.file_name

    neighbor_joining(file_name)