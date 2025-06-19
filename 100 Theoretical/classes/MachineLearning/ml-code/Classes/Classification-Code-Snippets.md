# **Logistic Regression**

```python
import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import StandardScaler
from sklearn.linear_model import LogisticRegression
from sklearn.metrics import confusion_matrix, accuracy_score

class Logistic:

    def __init__(self, test_size=0.2, random_state=0):
        self.test_size = test_size
        self.random_state = random_state
        self.model = LogisticRegression(random_state=self.random_state)

        self.X_train = None
        self.X_test = None
        self.y_train = None
        self.y_test = None
        self.y_pred = None
        self.sc = None

    def preprocessing(self, data):
        X = data.iloc[:, :-1].values
        y = data.iloc[:, -1].values

        self.X_train, self.X_test, self.y_train, self.y_test = train_test_split(
            X, y, test_size=self.test_size, random_state=self.random_state
        )

    def scaling(self):
        self.sc = StandardScaler()
        self.X_train = self.sc.fit_transform(self.X_train)
        self.X_test = self.sc.transform(self.X_test)

    def regression(self):
        self.model.fit(self.X_train, self.y_train)
        return self.model

    def evaluate(self):
        self.y_pred = self.model.predict(self.X_test)
        return self.y_pred

    def prediction(self, a, b):
        value = self.model.predict(
            self.sc.transform([[a, b]])
        )
        return value[0]

if __name__ == "__main__":

    data = pd.read_csv("/content/Social_Network_Ads.csv")
    logistic_model = Logistic(test_size=0.2, random_state=0)
    logistic_model.preprocessing(data)
    logistic_model.scaling()
    model = logistic_model.regression()

    print(logistic_model.evaluate())

    result = logistic_model.prediction(30, 87000)
    print(f"Predicted class: {result}")

    pred_actual_df = pd.DataFrame({
        'Predicted': logistic_model.y_pred,
        'Actual': logistic_model.y_test
    })
    print("\nPredictions vs Actual Values:")
    print(pred_actual_df)

    cm = confusion_matrix(logistic_model.y_test, logistic_model.y_pred)
    print(cm)

    accuracy = accuracy_score(logistic_model.y_test, logistic_model.y_pred)
    print(f"accuracy: {accuracy}")

```


## **Sample Output**

```
[0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 1 0 0 1 0 1 0 1 0 0 0 0 0 0 1 0 0 0 0
 0 0 1 0 0 0 0 1 0 0 1 0 1 1 0 0 0 1 0 0 0 0 0 0 1 0 0 0 1 0 0 0 0 1 0 0 0
 0 0 1 0 1 1]

Predicted class: 0

- Predictions vs Actual Values:
    Predicted  Actual
0           0       0
1           0       0
2           0       0
3           0       0
4           0       0
..        ...     ...
75          0       0
76          1       0
77          0       0
78          1       1
79          1       1

[[57  1]
 [ 5 17]]

accuracy: 0.925

```