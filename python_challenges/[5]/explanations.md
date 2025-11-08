# 1. Sort the DataFrame by ID
    # Ensure the row to keep (lowest ID) comes first for each email.

# 2. Identify the rows to KEEP
    # I want to keep the first (lowest ID) occurrence of each email.
    # ~person['email'].duplicated() gives us a boolean mask: True for the first occurrence, False for duplicates.
    
# 3. Modify the DataFrame IN PLACE
    # The .drop() method is used to remove the rows marked as duplicates (where rows_to_keep is False).
    # We get the index of the rows we DON'T want to keep.
    
    # I use the inplace=True to modify the 'person' DataFrame directly and avoid returning a value.
    
    # NO return statement is needed (the function signature is -> None)