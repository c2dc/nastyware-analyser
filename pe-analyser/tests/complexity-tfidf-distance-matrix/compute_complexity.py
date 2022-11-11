import pandas as pd
from sklearn.feature_extraction.text import TfidfVectorizer
import scipy
import time
import matplotlib.pyplot as plt
import numpy as np
import threading
import multiprocessing as mp

data_path = './brazilian-malware.csv'
data = pd.read_csv(data_path)

def time_calc_dist_mat(max_features=None):
    time_start = time.time()
    texts = data["ImportedDlls"].values
    mid = int((len(texts) + 1)/2)
    train_texts = texts[:mid]
    test_texts = texts[mid:]
    vectorizer = TfidfVectorizer(max_features=max_features)
    vectorizer.fit(train_texts)
    train_features = vectorizer.transform(train_texts)
    test_features = vectorizer.transform(test_texts)
    distance_matrix = scipy.spatial.distance.cdist(train_features.toarray(), train_features.toarray(), 'euclidean')
    time_end = time.time()
    return time_end - time_start

# Use grid search to find the max_features curve
max_features_list = [100, 200, 300, 400, 500, 600]
time_list = {}
pool = mp.Pool(mp.cpu_count())
for max_features in max_features_list:
    time_list[max_features] = pool.apply_async(time_calc_dist_mat, (max_features,))
pool.close()
pool.join()
time_list = {k: v.get() for k, v in time_list.items()}

# Plot the curve
plt.plot(list(time_list.keys()), list(time_list.values()))
plt.xlabel('max_features')
plt.ylabel('time')
plt.show()
