import pandas as pd

df = pd.DataFrame()

filepaths = ['en_climate_hourly_ON_6158359_02-2020_P1H', 'en_climate_hourly_ON_6158359_02-2021_P1H', 'en_climate_hourly_ON_6158359_02-2022_P1H']

for fp in filepaths:
    df = pd.concat([df, pd.read_csv(f'../data/{fp}.csv')])
    print(pd.read_csv(f'../data/{fp}.csv'))

df.to_csv('all_years.csv')


