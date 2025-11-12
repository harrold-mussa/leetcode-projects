import pandas as pd

def list_products(products: pd.DataFrame, orders: pd.DataFrame) -> pd.DataFrame:
    merged_df = pd.merge(orders, products, on='product_id', how='inner')
    merged_df['order_date'] = pd.to_datetime(merged_df['order_date'])
    start_date = '2020-02-01'
    end_date = '2020-02-29'

    feb_orders_df = merged_df[
    (merged_df['order_date'] >= start_date) & 
    (merged_df['order_date'] <= end_date)
    ]

    product_units = feb_orders_df.groupby('product_name')['unit'].sum().reset_index()

    final_result_df = product_units[product_units['unit'] >= 100]

    result = final_result_df[['product_name', 'unit']]

    return(result)
