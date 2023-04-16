
with open('tree.newick') as f:
    lines = [line.strip() for line in f.readlines()]

with open('tree.newick', 'w') as f:
    f.write(''.join(lines))