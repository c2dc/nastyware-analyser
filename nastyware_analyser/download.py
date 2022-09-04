import requests
import json
import pyzipper
import os
import sys

DOWNLOAD_ROOT_PATH = 'https://datalake.abuse.ch/malware-bazaar/daily'
ZIP_PASSWORD = b'infected'

TEMPORARY_DIRECTORY = './tmp'
SAMPLES_DIRECTORY = './samples'

def download_file(url, filename):
    response = requests.get(url)
    with open(f'{TEMPORARY_DIRECTORY}/{filename}', 'wb') as f:
        f.write(response.content)

def extract_zip_file(filepath, output_dir):
    with pyzipper.AESZipFile(filepath) as zf:
        zf.pwd = ZIP_PASSWORD
        zf.extractall(output_dir)

def move_pe_files(source_dir, destination_dir):
    for filename in os.listdir(source_dir):
        if filename.endswith('.exe') or filename.endswith('.dll'):
            os.rename(f'{source_dir}/{filename}', f'{destination_dir}/{filename}')

def download_pe_files(date):

    download_file(f'{DOWNLOAD_ROOT_PATH}/{date}.zip', f'{date}.zip')

    extract_zip_file(f'{TEMPORARY_DIRECTORY}/{date}.zip', TEMPORARY_DIRECTORY)

    os.remove(f'{TEMPORARY_DIRECTORY}/{date}.zip')

    move_pe_files(TEMPORARY_DIRECTORY, SAMPLES_DIRECTORY)

    # Remove files from temporary directory
    for filename in os.listdir(TEMPORARY_DIRECTORY):
        os.remove(f'{TEMPORARY_DIRECTORY}/{filename}')