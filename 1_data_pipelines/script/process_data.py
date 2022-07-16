import pandas as pd
import argparse

parser = argparse.ArgumentParser(description='Process a data file with columns name and price.')
parser.add_argument('--file', help='enter filepath to the related file')

args = parser.parse_args()

df = pd.read_csv(args.file)

if ('name' not in df.columns) | ('price' not in df.columns):
    print("Please input the correct file with columns name and price.")
else:
    # split name into first_name and last_name
    df[['first_name', 'last_name']] = df['name'].str.split(' ', 1, expand=True)

    # delete rows with no name
    df = df[~df['name'].isna()]

    # remove 0 prepended to field
    if df['price'].dtype != 'float64':
        df['price'] = df['price'].astype('float64')
    
    # create new field which is true if price is strictly greater than 100
    df['above_100'] = df['price'].gt(100)

    processed_filename = 'processed_' + args.file.split('/')[-1]
    df.to_csv(processed_filename, index=False)
    print("Processing completed.")