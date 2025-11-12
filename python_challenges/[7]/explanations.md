# SQL to Pandas Conversion Explanation

## Goal
The goal of the query is to find the names of products that had a **total** of 100 or more units ordered during February 2020.

## 1. Import and Setup (The "FROM" and "JOIN" equivalent)
In SQL, we start with `FROM Orders AS o INNER JOIN Products AS p`. In pandas, we start by loading the DataFrames and then performing a **merge**.

```python
import pandas as pd

# Assume products_df and orders_df are already loaded
# products_df columns: product_id, product_name
# orders_df columns: order_id, product_id, order_date, unit

# I first merge the two DataFrames on 'product_id', which is the common column.
# This is the equivalent of the INNER JOIN in SQL, keeping only matching rows.
merged_df = pd.merge(orders_df, products_df, on='product_id', how='inner')