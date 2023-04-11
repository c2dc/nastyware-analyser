filenames = [f'rules_{i}.yar' for i in range(1, 11)]

for file in filenames:
    content = open(file, 'r').read()
    content = content.replace('\'', '')
    open(file, 'w').write(content)