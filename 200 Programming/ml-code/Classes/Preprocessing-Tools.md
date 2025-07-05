# **Basic Preprocessing Template**

```python
import numpy as np
import matplotlib.pyplot as plt
import pandas as pd

# Importing the dataset
dataset = pd.read_csv('Data.csv')
X = dataset.iloc[:, :-1].values
y = dataset.iloc[:, -1].values

# Splitting the dataset into the Training set and Test set
from sklearn.model_selection import train_test_split
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=0)

```

**Reads a CSV file and separates features (X) and target (y):**

```python
dataset = pd.read_csv('Data.csv')
X = dataset.iloc[:, :-1].values
y = dataset.iloc[:, -1].values
```

**Splits data into 80% training and 20% test sets:**

```python
from sklearn.model_selection import train_test_split
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=0)
```


---

# **Handling Missing Values**

```python
from sklearn.impute import SimpleImputer
imputer = SimpleImputer(missing_values=np.nan, strategy='mean')

# Selecting all rows and columns 1 and 2 (index 1:3)
imputer.fit(X[:, 1:3])
X[:, 1:3] = imputer.transform(X[:, 1:3])
print(X)
```


## **Explanation**

- **Import**: Imports `SimpleImputer` from Scikit-learn to replace missing values.    
- **Initialize Imputer**: Creates an imputer to replace `np.nan` with the mean of each column (here, columns 1 and 2).
- **Fit**: Learns the mean values for columns 1 and 2.
- **Transform**: Replaces missing values in those columns with the learned means and updates `X`.
- **Print**: Displays the updated `X` with no missing values in columns 1 and 2.


---

# **Encoding Categorical Variables**

```python
from sklearn.compose import ColumnTransformer
from sklearn.preprocessing import OneHotEncoder

ct = ColumnTransformer(transformers=[('encoder', OneHotEncoder(), [0])], remainder='passthrough')
X = np.array(ct.fit_transform(X))
print(X)
```

## **Explanation**

- **Import**: Imports `OneHotEncoder` and `ColumnTransformer` from Scikit-learn.
- **Initialize ColumnTransformer**: Applies `OneHotEncoder` to column 0, creating binary columns for each category, while other columns remain unchanged.    
- **Fit and Transform**: `ct.fit_transform(X)` applies one-hot encoding and converts the result to a NumPy array.
- **Update X**: Assigns the transformed data back to `X`.
- **Print**: Displays the updated `X` with encoded data.

---

# **Label Encoder**

```python
from sklearn.preprocessing import LabelEncoder
le = LabelEncoder()
y = le.fit_transform(y)
print(y)
```

## **Explanation**

- **Import**: Imports `LabelEncoder` from Scikit-learn.
- **Initialize LabelEncoder**: Creates a `LabelEncoder` object
- **Fit and Transform**: `le.fit_transform(y)` assigns a numerical value to each category in `y`.
- **Print**: Displays the encoded `y`.

----

# **Feature Scaling**

```python
from sklearn.preprocessing import StandardScaler
sc = StandardScaler()
X_train[:, 3:] = sc.fit_transform(X_train[:, 3:])
X_test[:, 3:] = sc.transform(X_test[:, 3:])
print(X_train)
print(X_test)
```


## **Explanation**

- **Import**: Imports `StandardScaler` from Scikit-learn.
- **Initialize Scaler**: Creates a `StandardScaler` object.
- **Fit and Transform (Training Data)**: Standardizes columns 3 and beyond in `X_train` (mean=0, std=1).
- **Transform (Test Data)**: Applies the same scaling to `X_test` using parameters learned from `X_train`.
- **Print**: Displays the updated `X_train` and `X_test` with standardized columns.