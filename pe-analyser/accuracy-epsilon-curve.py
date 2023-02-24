import sys
import os
import pandas as pd
import numpy as np
import seaborn as sns
from itertools import combinations
from sklearn.feature_extraction.text import TfidfVectorizer
from sklearn.tree import DecisionTreeClassifier, plot_tree
from sklearn.model_selection import train_test_split
from sklearn.metrics import accuracy_score, confusion_matrix, f1_score
import matplotlib.pyplot as plt

def ld_data(dir_name, files, label=None):
    # Load data in files from directory dir_name in a pandas dataframe
    df = pd.DataFrame()
    for filename in files:
        funcs = []
        with open(os.path.join(dir_name, filename), 'r') as f:
            lines = f.read().splitlines()
            
            for line in lines:
                lib, func = line.split(' ')
                if '@' in func or '?' in func:
                    continue

                if not func.lower() in func_dict:
                    func_dict[func.lower()] = [(lib, func)]
                else:
                    func_dict[func.lower()].append((lib, func))

                funcs.append(func)

        # label = 'MALWARE' if filename.startswith('R') else 'GOODWARE'
        df = pd.concat([df, pd.DataFrame({'filename': filename, 'label': label, 'funcs': ' '.join(funcs)}, index=[0])], ignore_index=True)
    return df

# Functions that occur in all malwares in the cluster
def plus_functions(dir, cluster):
    file_sets = []

    for file in cluster:
        file_sets.append(set(line.split(' ')[1] for line in open(os.path.join(dir, file)).read().splitlines()))
    
    intersection = set.intersection(*file_sets)

    return intersection

# Functions that does not occur in any malwares in the cluster
def minus_functions(dir, cluster):
    others_set = set()

    dir = os.path.join(dir)

    for file in os.listdir(dir):
        if file in cluster:
            continue

        others_set.update(set(line.split(' ')[1] for line in open(os.path.join(dir, file)).read().splitlines()))
    
    cluster_set = set()
    for file in cluster:
        cluster_set.update(set(line.split(' ')[1] for line in open(os.path.join(dir, file)).read().splitlines()))

    others_minus_cluster = others_set - cluster_set

    return others_minus_cluster

def functions(dir):
    return [set(line.split(' ')[1] for line in open(os.path.join(dir, file)).read().splitlines()) for file in os.listdir(dir)]

def predict_similarity_difference(file_functions_set, plus_functions_set_list, minus_functions_set_list):

    for plus_functions_set, minus_functions_set in zip(plus_functions_set_list, minus_functions_set_list):
        plus_functions_intersection = file_functions_set & plus_functions_set
        minus_functions_intersection = file_functions_set & minus_functions_set

        if len(plus_functions_intersection) == len(plus_functions_set) and len(minus_functions_intersection) == 0:
            return 'MALWARE'

    return 'GOODWARE'


func_dict = {}

def dt_classification(epsilon):
    
    malware_clusters_df = [ld_data(TRAIN_DIR, cluster, str(i)) for i, cluster in enumerate(mostly_malware_clusters)]
    rest_df = ld_data(TRAIN_DIR, [f for f in os.listdir(TRAIN_DIR) if not any([f in cluster for cluster in mostly_malware_clusters])], '-1')
    df = pd.concat([rest_df] + malware_clusters_df, ignore_index=True)

    vectorizer = TfidfVectorizer()
    df_vectors = vectorizer.fit_transform(df['funcs']).ceil()
    classifier = DecisionTreeClassifier(criterion='entropy')
    classifier.fit(df_vectors, df['label'])

    test_mw = ld_data(TEST_MALWARE_DIR, os.listdir(TEST_MALWARE_DIR), 'MALWARE')
    test_gw = ld_data(TEST_GOODWARE_DIR, os.listdir(TEST_GOODWARE_DIR), 'GOODWARE')
    test_df = pd.concat([test_mw, test_gw], ignore_index=True)

    test_mw_vectors = vectorizer.transform(test_mw['funcs']).ceil()
    test_gw_vectors = vectorizer.transform(test_gw['funcs']).ceil()
    test_vectors = vectorizer.transform(test_df['funcs']).ceil()
    pred_mw = classifier.predict(test_mw_vectors)
    pred_gw = classifier.predict(test_gw_vectors)
    pred = classifier.predict(test_vectors)
    pred_mw = ['MALWARE' if p != '-1' else 'GOODWARE' for p in pred_mw]
    pred_gw = ['MALWARE' if p != '-1' else 'GOODWARE' for p in pred_gw]
    pred = ['MALWARE' if p != '-1' else 'GOODWARE' for p in pred]

    return accuracy_score(test_df['label'], pred)

def sd_classification(epsilon):
    plus = [plus_functions(TRAIN_DIR, cluster) for cluster in mostly_malware_clusters]
    minus = [minus_functions(TRAIN_DIR, cluster) for cluster in mostly_malware_clusters]

    test_mw = functions(TEST_MALWARE_DIR)
    test_gw = functions(TEST_GOODWARE_DIR)
    test = test_mw + test_gw
    test_mw_label = ['MALWARE' for _ in test_mw]
    test_gw_label = ['GOODWARE' for _ in test_gw]
    test_label = test_mw_label + test_gw_label
    pred_mw = [predict_similarity_difference(file_functions_set, plus, minus) for file_functions_set in test_mw]
    pred_gw = [predict_similarity_difference(file_functions_set, plus, minus) for file_functions_set in test_gw]
    pred = [predict_similarity_difference(file_functions_set, plus, minus) for file_functions_set in test]

    return accuracy_score(test_label, pred)

TRAIN_DIR = '/archive/files/nastyware-files/import-arquivos-nilson/'
TEST_MALWARE_DIR = '/archive/files/nastyware-files/import-malware-bazaar-2021-01-to-2021-02/'
TEST_GOODWARE_DIR = '/archive/files/nastyware-files/import-windows-server-2016/'

acc_dt = []
acc_sd = []
mostly_malware_clusters = []

lines = open('node_clustering_multilevel.txt', 'r').readlines()
lines = lines[1:]
clusters = [[el.strip() for el in line.strip().split(',') if not el.strip().startswith('-')] for line in lines]

xx = np.linspace(0.1, 1, 10)

for epsilon in xx:
    mostly_malware_clusters = []
    for cluster in clusters:
        if len(cluster) > 1:
            malware_count = 0
            for node in cluster:
                if node.startswith('R-'):
                    malware_count += 1
            if malware_count >= epsilon * len(cluster):
                mostly_malware_clusters.append(cluster)


    acc_dt.append(dt_classification(epsilon))
    acc_sd.append(sd_classification(epsilon))

# Plot the results varying epsilon
plt.plot(xx, acc_dt, label='Decision Tree')
plt.plot(xx, acc_sd, label='Similarity Difference')
plt.xlabel('Epsilon')
plt.ylabel('Accuracy')
plt.legend()
plt.savefig('epsilon-accuracy-multilevel.png')
