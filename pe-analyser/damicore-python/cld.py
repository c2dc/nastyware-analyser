# Common Line Distance (CLD) implementation

import os
import sys
from progress_bar import ProgressBar

# TODOç
def cld(fname1, fname2):
    return 0

# TODO:
def _parallel_distance_matrix(fnames, **kwargs):
    pass

def _serial_distance_matrix(fnames, **kwargs):
    """Serial calculation for distance matrix."""
    sys.stderr.write('Compressing individual files...\n')

    file_pairs = [(fname1, fname2)
      for fname1 in fnames
      for fname2 in fnames
      if fname1 < fname2]

    progress_bar = ProgressBar(len(fnames))

    def update_progress(pair):
        fname1, fname2 = pair
        ncd_result = cld(fname1, fname2, **kwargs)
        progress_bar.increment()
        return ncd_result
    
    ncd_results = map(update_progress, file_pairs)
    
    sys.stderr.write('\n')

    

def distance_matrix(directory, is_parallel=False, **kwargs):
    """Calculates the distance matrix of the files in the given directory using how many 
    lines are common between them.

    Args:
        directory: The directory containing the files to be compared.
        is_parallel: Whether to use parallel processing to calculate the
            distance matrix.
        **kwargs: Additional arguments to pass to the distance function.

    Returns:
        A dictionary containing the distance matrix.
    """

    fnames = sorted(os.listdir(directory))
    fnames = [os.path.join(directory, fname)
        for fname in fnames
        if os.path.isfile(os.path.join(fnames, fname))]

    if is_parallel:
        return _parallel_distance_matrix(fnames, **kwargs)
    else:
        return _serial_distance_matrix(fnames, **kwargs)

    