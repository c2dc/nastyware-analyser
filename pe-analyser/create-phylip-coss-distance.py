import os
import sys
import argparse
import numpy as np
from scipy.spatial.distance import cosine

def create_dist_matrix(directory):
    """
        Creates a distance matrix from a directory of files using Hamming Distance
        directory: Directory containing files to compare 2 by 2
        return: Distance matrix and order of files used
    """

    files = [f for f in os.listdir(directory) if os.path.isfile(os.path.join(directory, f))]
    dist_matrix = np.zeros((len(files), len(files)))
    for i in range(0, len(files) - 1):
        print(f"Processing {i} / {len(files)}", end="\r") 
        for j in range(i + 1, len(files)):
            if i == j:
                dist_matrix[i][j] = 0
            else:
                f1 = open(os.path.join(directory, files[i]), 'rb').read()
                f2 = open(os.path.join(directory, files[j]), 'rb').read()

                # Split content in list of chars
                f1 = list(map(int, list(f1.decode())))
                f2 = list(map(int, list(f2.decode())))

                dist_matrix[i][j] = cosine(f1, f2)
                dist_matrix[j][i] = dist_matrix[i][j]

    print()

    return dist_matrix, files

def export_phylip_file(dist_matrix, filename_order, output_file):
    """
        Export distance matrix to a phylip file
        dist_matrix: Distance matrix
        filename_order: Order of files used to create the distance matrix
        output_file: File to output the result
    """

    with open(output_file, 'wt') as f:
        f.write(str(len(filename_order)) + "\n")
        for i in range(0, len(filename_order)):
            f.write(filename_order[i] + " ")
            for j in range(0, len(filename_order)):
                f.write(str(dist_matrix[i][j]) + " ")
            f.write("\n")

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('-d', '--directory', help='File to output NCD result', required=True)
    parser.add_argument('-o', '--phylip-output', help='File to output tree result', default="./ncd-matrix.phylip")
    args = parser.parse_args()

    dist_matrix, filename_order = create_dist_matrix(args.directory)

    export_phylip_file(dist_matrix, filename_order, args.phylip_output)



if __name__ == '__main__':
    main()