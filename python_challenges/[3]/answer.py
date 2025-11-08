import pandas as pd 

def duplicate_emails(person: pd.DataFrame) -> pd.DataFrame:
    counting_emails = person.groupby('email')['email'].transform('count')
    duplicate_rows = person[counting_emails > 1]
    results_df = duplicate_rows[['email']].drop_duplicates().rename(columns={'email': 'Email'})

    return results_df
