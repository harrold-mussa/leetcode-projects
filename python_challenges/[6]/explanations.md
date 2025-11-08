# The Correct GroupBy Approach:
The correct solution uses the groupby and min methods in a highly idiomatic pandas chain:
    activity.groupby('player_id'): This splits the DataFrame into sub-DataFrames, one for each unique player_id.
    ['event_date'].min(): For each sub-DataFrame (each player), it finds the lowest (earliest) value in the event_date column. 
    The result is a pandas Series where player_id is the index and the minimum date is the value.
    .reset_index(): Aggregation often turns the grouping column into the index. This command converts the index back into a regular column, resulting in a two-column DataFrame: player_id and event_date.
    .rename(columns={'event_date': 'first_login'}): This final step ensures the output column names match the problem's requirements.