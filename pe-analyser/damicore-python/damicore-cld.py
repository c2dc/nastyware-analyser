#!/usr/bin/python3

from tree import newick_format, to_graph

import argparse
import math
import cld
import os
import shutil
import sys
import tree_simplification as nj

def clustering(directory, is_parallel = False, **kwargs):
  sys.stderr.write('Performing CLD distance matrix calculation...\n')
  cld_results = cld.distance_matrix(directory, is_parallel = is_parallel, **kwargs)

  sys.stderr.write('\nSimplifying graph...\n')
  m, ids = cld.to_matrix(cld_results)
  tree = nj.neighbor_joining(m, ids)

  sys.stderr.write('\nClustering elements...\n')
  g = to_graph(tree)
  fast_newman = g.community_fastgreedy(weights="length").as_clustering()

  # Maps leaf ID to cluster number
  vertex_names = [v["name"] for v in g.vs]
  membership = {}
  for id_ in ids:
    membership[id_] = fast_newman.membership[ vertex_names.index(id_) ]

  return {
      'cld': cld_results,
      'tree': tree,
      'fnames': ids,
      'graph': g,
      'node_clustering': fast_newman,
      'fname_cluster': membership,
  }

def calc_weights(lengths, min_length=1):
  n = len(lengths)
  mean = float(sum(lengths)) / n
  var = sum((l - mean)**2 for l in lengths) / n
  stddev = math.sqrt(var)
  scores = [(l - mean)/stddev for l in lengths]
  min_score = min(scores)
  norm_length = [min_length + (score - min_score) for score in scores]
  return norm_length

if __name__ == '__main__':
  parser = argparse.ArgumentParser(description='Use CLD verion of damicore')
  parser.add_argument('directory', help='Directory containing files to compare')
  parser.add_argument('-o', '--output', help='output file (default: stdout)')
  parser.add_argument('--cld-output', help='File to output CLD result')
  parser.add_argument('--tree-output', help='File to output tree result')
  parser.add_argument('--graph-image', help='File to output graph image')
  a = parser.parse_args()

  kwargs = {
      'pair_dir': 'tmp',
      'ppmd_tmp_dir': 'ppmd_tmp',
  }

  d = clustering(directory=a.directory, **kwargs)

  print(d['node_clustering'])
  cld_results = d['cld']
  cld_out = cld.phylip_format(cld_results)
  with open('./cld-matrix.phylip', 'wt') as f:
    f.write(cld_out)

  # Outputs tree in Newick format
  if a.tree_output is not None:
    tree = d['tree']
    with open(a.tree_output, 'wt') as f:
      f.write(newick_format(tree))

  # Output cluster membership
  out = 'filename,cluster\n'
  for fname, cluster in d['fname_cluster'].items():
    out += '%s,%d\n' % (fname, cluster)

  if a.output is None:
    print(out)
  else:
    with open(a.output, 'wt') as f:
      f.write(out)
  
  # Remove tmp/
  if os.path.exists('tmp'):
    shutil.rmtree('tmp/')

