import yara
import yara_tools

rule = yara_tools.create_rule(name="blackcat_cluster")
rule.add_import(name="pe")

plus_functions = set(open('analysis/optimal_plus_functions.txt').read().splitlines())
minus_functions = set(open('analysis/optimal_minus_functions.txt').read().splitlines())

for line in plus_functions:
    lib, func = line.split()
    rule.add_condition(f'pe.imports("{lib}", "{func}")')

for line in minus_functions:
    lib, func = line.split()
    rule.add_condition(f'not (pe.imports("{lib}", "{func}"))')


generated_rule = rule.build_rule()

compiled_rule = yara.compile(source=generated_rule)

print (generated_rule)
