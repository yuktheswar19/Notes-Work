Pandas is an open-source Python library used for data manipulation and analysis. It provides flexible data structures like Data Frames and Series that make it easy to clean, explore, and analyze structured data efficiently. Pandas allows handling of various data formats and supports operations such as filtering, sorting, grouping, and aggregating data, making it a fundamental tool for data science and analysis tasks.


## .loc

The `.loc` attribute in pandas is used to access a group of rows and columns in a DataFrame by their labels. It allows you to select data using the row and column names instead of integer positions. You can pass single labels, lists of labels, slices, or boolean conditions to `.loc` to filter specific parts of your Data Frame.

For example, **`df.loc['row_label', 'column_label']`** accesses the cell at the intersection of a row and column label


## Importance of `[[]]`

Using double square brackets `[[ ]]` in pandas is necessary when selecting multiple columns because it passes a **list** of column names as a single argument to pandas. This ensures the result is a DataFrame (2-dimensional), preserving the tabular structure. In contrast, single brackets with one column name return a Series (1-dimensional).


