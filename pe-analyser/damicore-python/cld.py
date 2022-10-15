# Common Line Distance (CLD) implementation

import os
import sys
from progress_bar import ProgressBar

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
        cld_result = cld(fname1, fname2, **kwargs)
        progress_bar.increment()
        return cld_result
    
    cld_results = map(update_progress, file_pairs)
    
    sys.stderr.write('\n')

    return cld_results
    

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


class CldResults:
    def __init__ (self, x, y, cld):
        self.x = x
        self.y = y
        self.cld = cld

def cld(fname1, fname2):
    """Calculates the Common Line Distance (CLD) between two files.

    Args:
        fname1: The first file to compare.
        fname2: The second file to compare.

    Returns:
                        | Intersection |
        CLD(x, y) = ---------------------------
                            | Union |

    """
    with open(fname1, 'r') as f1, open(fname2, 'r') as f2:
        lines1 = set(f1.readlines())
        lines2 = set(f2.readlines())

    result = CldResults(
        x = os.path.basename(fname1),
        y = os.path.basename(fname2),
        cld = 1 - len(lines1 & lines2) / len(lines1 | lines2)
    )

    return result

def cld1(fname1, fname2):
    """Calculates the Common Line Distance (CLD) between two files.

    Args:
        fname1: The first file to compare.
        fname2: The second file to compare.

    Returns:                         
        CLD(x, y) = | Intersection |
    """
    with open(fname1, 'r') as f1, open(fname2, 'r') as f2:
        lines1 = set(f1.readlines())
        lines2 = set(f2.readlines())

    result = CldResults(
        x = os.path.basename(fname1),
        y = os.path.basename(fname2),
        cld = len(lines1 & lines2)
    )

    return result

def to_matrix(cld_results):
  """Converts a list of CldResult objects to an n x n matrix.

  @param cld_results List of CldResult as returned by distance_matrix
  @return (m, ids) distance matrix with corresponding IDs
  """
  files = [r.x for r in cld_results] + [r.y for r in cld_results]
  ids = sorted(set(files))
  n = len(ids)

  m = [[0.0 for _ in range(n)] for _ in range(n)]

  for result in cld_results:
    i, j = ids.index(result.x), ids.index(result.y)
    m[i][j] = m[j][i] = result.ncd

  return m, ids

def phylip_format(cld_results, alternative_ids):
    """Formats a list of NcdResult objects in Phylip format.
   
        The Phylip format is used in phylogenetic software to store distance
    matrices between taxa. Each taxon name is limited to 10 chars, so the
    IDs used in NCD are truncated to satisfy this restriction. The format is as
    follows:

        <number-of-taxons>
        <taxon-name 1> <d(t1,t1)> <d(t1,t2)> ... <d(t1,tn)>
        <taxon-name 2> <d(t2,t1)> <d(t2,t2)> ... <d(t2,tn)>
        ...
        <taxon-name n> <d(tn,t1)> <d(tn,t2)> ... <d(tn,tn)>

    @param ncd_results List of NcdResult as returned by distance_matrix
    @param alternative_ids Optional IDs to use as taxon name. This might be
        necessary if the truncation of file names results in duplicates.
    @return String with matrix in Phylip format
    """
    m, ids = to_matrix(cld_results)
    if alternative_ids is not None:
        ids = alternative_ids
    names = ['{name:<10.10}'.format(name=id_) for id_ in ids]
    # TODO(brunokim): Find conflicts and solve them

    s = '%d\n' % len(m)
    for name,row in zip(names, m):
        xs = ' '.join('%.15f' % dij for dij in row)
        s += name + ' ' + xs + '\n'

    return s