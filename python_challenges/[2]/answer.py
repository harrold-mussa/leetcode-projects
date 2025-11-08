import pandas as pd

def find_employees(employee: pd.DataFrame) -> pd.DataFrame:
    merged_df = employee.merge(
        employee,
        left_on='managerId',
        right_on='id',
        how='inner',
        suffixes=('_e', '_m')
    )

    filtered_df = merged_df[merged_df['salary_e'] > merged_df['salary_m']]

    result_df = filtered_df[['name_e']].rename(columns={'name_e': 'Employee'})

    return result_df