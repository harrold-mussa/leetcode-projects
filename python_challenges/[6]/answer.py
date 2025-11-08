import pandas as pd

def game_analysis(activity: pd.DataFrame) -> pd.DataFrame:
    results_df = activity.groupby('player_id')['event_date'].min().reset_index()
    results_df = results_df.rename(columns={'event_date': 'first_login'})
   
    return results_df
