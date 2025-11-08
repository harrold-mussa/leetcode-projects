import pandas as pd

def find_customers(customers: pd.DataFrame, orders: pd.DataFrame) -> pd.DataFrame:
    merged_df = customers.merge(
        orders,
        left_on='id',
        right_on='customerId',
        how='left'
    )

    filtered_df = merged_df[merged_df['customerId'].isna()]
    result_df = filtered_df[['name']].rename(columns={'name': 'Customers'})

    return result_df