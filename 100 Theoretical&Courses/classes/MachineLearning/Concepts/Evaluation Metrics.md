# **R-Squared**

## Definition
- **R-squared (R²)** is an evaluation metric for regression models that measures how well the model fits the data.
- It quantifies the proportion of variance in the dependent variable (outcome) explained by the independent variables (predictors).

## Value Range
- **0 to 1** (or 0% to 100%):
- **1 (100%)**: Model explains all variability (perfect fit)
  - **0 (0%)**: Model explains no variability
  - **< 0**: Model performs worse than horizontal mean line

## Interpretation Rule of Thumb
| R² Value      | Interpretation       |
|---------------|----------------------|
| 1.0           | Perfect fit (rare/suspicious) |
| ~0.9          | Very good            |
| <0.7          | Not great            |
| <0.4          | Poor/Terrible        |
| <0            | Model invalid for data |

> *Interpretation depends heavily on domain context*

---

## **Adjusted R-Squared**
### Key Concept
- **Adjusted R²** modifies standard R² to account for the number of predictors in the model.
- Penalizes adding unnecessary variables that don't improve model fit.

### Formula
Adjusted R² = 1 - [(1 - R²)(n - 1)/(n - k - 1)]


Where:
- `n` = number of observations
- `k` = number of independent variables

### Why It Matters
- Prevents artificial inflation of R² when adding more predictors
- More reliable for comparing models with different numbers of features
- Always ≤ R² (equals R² only when k=0)

---

## Key Differences
| Metric          | Best For                          | Accounts For |
|-----------------|-----------------------------------|--------------|
| R²              | Simple model comparison           | Model fit    |
| Adjusted R²     | Complex models with multiple features | Model complexity |

> Use Adjusted R² when working with multiple regression models!

---

## **Confusion Matrix** 

The confusion matrix will show exactly number of correct predictions and number of incorrect predictions from after the training 

A table that shows how well a classification model performs by comparing predicted labels to actual labels. It helps evaluate the model's accuracy, precision, recall, etc.

**Simple Example**: For a binary classifier predicting "Pass" (1) or "Fail" (0):

|                | Predicted Pass | Predicted Fail |
|----------------|----------------|----------------|
| **Actual Pass** |       50       |       10       |
| **Actual Fail** |       5        |       35       |

- **Rows**: Actual labels (Pass, Fail).
- **Columns**: Predicted labels (Pass, Fail).
- **Values**:
    - 50: True Positives (correctly predicted Pass).
    - 10: False Negatives (actual Pass, predicted Fail).
    - 5: False Positives (actual Fail, predicted Pass).
    - 35: True Negatives (correctly predicted Fail)

