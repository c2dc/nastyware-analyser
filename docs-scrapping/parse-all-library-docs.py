import requests
import pandas as pd
from bs4 import BeautifulSoup
import csv

df = pd.read_csv('documented-libraries.csv')

len_df = len(df)

for index, row in df.iterrows():
    print(f'Processing {row["name"]}, {index + 1}/{len_df}                             ', end='\r')
    header_name = row['name']
    header_url = row['url']
    data = requests.get(header_url).text
    soup = BeautifulSoup(data, 'html.parser')

    titles = soup.find_all('h2', class_='')
    
    if len(titles) == 0:
        print(f'No titles found for {header_name}                 ')

    index = -1
    for i, title in enumerate(titles):
        if title.text == 'Functions':
            index = i
            break

    for i, table in enumerate(soup.find_all('table')):
        if i != index:
            continue

        rows = table.find_all('tr')
        with open(f'/archive/files/microsoft-docs-descriptions/{header_name}.csv', 'w') as f:
            writer = csv.writer(f)
            writer.writerow(['name', 'description'])
            for row in rows:
                table_data = row.find('td')
                if table_data is not None:
                    try:
                        name, description = table_data.text.strip().split(' ', 1)
                    except ValueError:
                        name = table_data.text.strip()
                        description = ''
                    writer.writerow([name, description])

print()