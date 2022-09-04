import requests
import os
import sys
import json

API_BASE_URL = 'https://mb-api.abuse.ch/api/v1/'

def get_hash_information(hash):
    data = {
        "query": "get_info",
        "hash": hash
    }

    response = requests.post(API_BASE_URL, data=data, timeout=15)

    json_string = response.content

    print(json_string.decode('utf-8'))

    json_dict = json.loads(json_string)

    return json_dict["data"][0]

def export_samples_information(csv_output_file):
    SAMPLES_DIRECTORY = './samples'
    
    samples = os.listdir(SAMPLES_DIRECTORY)
    
    samples_len = len(samples)
    
    with open(csv_output_file, 'w') as f:
        f.write('sha256_hash,file_type,first_seen,tags\n')

        for index, sample in enumerate(samples):
            print(f'\r[{index + 1}/{samples_len}] Getting information for {sample}', end='')
            filehash = sample.split('.')[0]
            sample_information = get_hash_information(filehash)
            f.write('{},{},{},{}\n'.format(sample_information['sha256_hash'], sample_information['file_type'], sample_information['first_seen'], " ".join(sample_information['tags'])))
        
        print()