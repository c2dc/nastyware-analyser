import sys
import os
import pandas as pd
import numpy as np
from sklearn.feature_extraction.text import TfidfVectorizer
from sklearn.tree import DecisionTreeClassifier, plot_tree
from sklearn.model_selection import train_test_split
from sklearn.metrics import accuracy_score
import matplotlib.pyplot as plt


def ld_data (dir_name):
    # Load data in files from directory dir_name in a pandas dataframe
    df = pd.DataFrame()
    for filename in os.listdir(dir_name):
        funcs = []
        with open(os.path.join(dir_name, filename), 'r') as f:
            lines = f.read().splitlines()
            funcs = [line.strip().split(' ')[1][2:-1] for line in lines if not '@' in line.strip().split(' ')[1][2:-1] and not '?' in line.strip().split(' ')[1][2:-1]]

        # Concat all functions as string in df
        label = 'MALWARE' if filename.startswith('R-') else 'GOODWARE'
        df = pd.concat([df, pd.DataFrame({'filename': filename, 'label': label, 'funcs': ' '.join(funcs)}, index=[0])], ignore_index=True)
        
    return df

if __name__ == '__main__':
    # Load the data
    
    dir_name = sys.argv[1]

    data = ld_data(dir_name)

    # Split the data into train and test
    train, test = train_test_split(data, test_size=0.2)

    # Create the tf-idf vectorizer
    vectorizer = TfidfVectorizer(max_features=10)
    train_vectors = vectorizer.fit_transform(train['funcs'])
    test_vectors = vectorizer.transform(test['funcs'])

    print(vectorizer.get_feature_names_out())
    print(train['filename'][0])
    print(train_vectors.toarray()[0])

    input()

    # Train the classifier
    classifier = DecisionTreeClassifier()
    classifier.fit(train_vectors, train['label'])
    # Print information about the decision tree
    plot_tree(classifier)
    # save svg in current directory
    plt.savefig('tree.svg')

    pred = classifier.predict(test_vectors)

    # Evaluate the classifier
    print('Accuracy: {}'.format(accuracy_score(test['label'], pred)))
