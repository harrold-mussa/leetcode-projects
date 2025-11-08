import pandas as pd

def delete_duplicate_emails(person: pd.DataFrame) -> None:
    person.sort_values(by='id', ascending=True, inplace=True)

    keep_rows = ~person['email'].duplicated()
    drop_indices = person[~keep_rows].index

    person.drop(drop_indices, inplace=True)