Pandas is an open-source Python library used for data manipulation and analysis. It provides flexible data structures like Data Frames and Series that make it easy to clean, explore, and analyze structured data efficiently. Pandas allows handling of various data formats and supports operations such as filtering, sorting, grouping, and aggregating data, making it a fundamental tool for data science and analysis tasks.


## .loc

The `.loc` attribute in pandas is used to access a group of rows and columns in a DataFrame by their labels. It allows you to select data using the row and column names instead of integer positions. You can pass single labels, lists of labels, slices, or boolean conditions to `.loc` to filter specific parts of your Data Frame.

For example, **`df.loc['row_label', 'column_label']`** accesses the cell at the intersection of a row and column label

### **Note :**  In pandas `.loc`, slices like `"Monday":"Wednesday"` represent a continuous range of labels and should be passed directly without outer brackets, because wrapping them in brackets turns the slice into a list, which is invalid syntax


## iloc

- The `.iloc` attribute in pandas is used for **integer-based positional indexing**. It selects rows and columns by their integer position (starting from 0) rather than by label.

- While `.loc` uses row/column labels (names) to access data, `.iloc` uses numerical index positions, similar to standard Python list indexing

	- For example:
		- `df.iloc` selects the first row (regardless of its label).
		- `df.iloc[0:3, 1:4]` selects rows 0 to 2 and columns 1 to 3 by position.

Use `.iloc` when you want to access data by its position in the Data Frame rather than its label.

## Importance of `[[]]`     [[numpy_code]]

Using double square brackets `[[ ]]` in pandas is necessary when selecting multiple columns because it passes a **list** of column names as a single argument to pandas. This ensures the result is a DataFrame (2-dimensional), preserving the tabular structure. In contrast, single brackets with one column name return a Series (1-dimensional).

- Using single brackets with one column returns a 1‑D **Series**, while using double brackets with multiple column names passes a list and returns a 2‑D **DataFrame**, keeping the table structure.


## Regular Expressions 

Regular expressions (regex) in Python are special patterns used to match and manipulate text. They allow you to search for specific sequences, validate formats, or extract parts of strings based on defined rules.

**Regular expressions are sequences of characters that define search patterns for matching and manipulating text in Python**

```python
import re

text = "My email is example@test.com"
pattern = r'\S+@\S+\.\S+'  # pattern to match an email-like string

match = re.search(pattern, text)
if match:
    print("Found:", match.group())
# Output: Found: example@test.com
```



## Important Note : **In pandas, square brackets `[ ]` are used for indexing, selecting columns, and slicing data, while parentheses `( )` are used to call functions or methods, passing any arguments inside them.**

