
# **Different Techniques**

---

## **What is Data Pre-processing?**

- Crucial initial step for machine learning model training
- Improves model accuracy by cleaning and structuring raw data
- Prepares data by addressing issues like missing values and inconsistent scales
- Typically done using **Pandas**, **Numpy**, and **Scikit-learn**

### **Common Techniques**
- Handling missing values
- Data cleaning
- Transformation
- Feature selection
- Feature engineering
- Data splitting

---

## **Detailed Processing Techniques**

### **Handling Missing Values**

- Addresses empty data points that could bias models
- **Deletion**: Remove rows/columns with missing values  
  *Best when missing data is minimal (<5% of dataset)*
- **Imputation**: Fill gaps using:
  - **Basic**: Mean/median/mode replacement
  - **Advanced**: K-Nearest Neighbors (KNN) imputation

> **When to use**:  
> Deletion → Small missing data amounts  
> Imputation → Preserve data integrity in large datasets

---

### **Data Transformation**

- Converts data into ML-suitable format
- **Categorical Encoding**:
  - `Label Encoding`: Ordinal data (e.g., "Low"→0, "Medium"→1)
  - `One-Hot Encoding`: Nominal data (creates binary columns)
- **Feature Scaling**:
  - **Min-Max Scaling**: Squeezes data to [0,1] range  
    `X_scaled = (X - X_min) / (X_max - X_min)`
  - **Standardization**: Centers data around mean=0, std=1  
    `X_std = (X - μ) / σ`

> **When to use**:  
> Encoding → All categorical features  
> Scaling → Distance-based algorithms (KNN, SVM, Neural Networks)

---

### **Feature Selection**

- Identifies most impactful features while removing noise
- **Recursive Feature Elimination (RFE)**:
  1. Train model with all features
  2. Remove least important feature
  3. Repeat until optimal feature set remains
- *Example*: Using RFE with linear regression to select top 5 predictors

---

### **Feature Engineering**

- Creates new features from existing ones
- **Binning**: Converts continuous → discrete groups  
  (e.g., age → [0-18, 19-30, 31-45])
- **Polynomial Features**: Captures complex relationships  
  `X1², X1·X2, X2²` from original `X1, X2`
- *Best for*: Domain-specific enhancements (finance, healthcare)

---

### **Data Splitting**

- Divides data for training/validation/testing
- **Random Split**:  
  Training (70-80%) | Validation (10-15%) | Test (10-15%)
- **Stratified Split**: Maintains class proportions  
  (Critical for imbalanced classification)
- *Always perform* before training to prevent overfitting

---

### **Preparing Data for Machine Learning**

Data preparation is oftentimes the most time-consuming step of the modeling process. It is also one of the most important with model accuracy often contingent on the quality of data inserted. To this end, we'll be applying the following transformations on this data, not in this particular order:

- **Feature Engineering:** Creating new features (columns) out of our raw data using domain knowledge
- **Imputation:** Inserting values where they might be missing to have a complete dataset
- **Encoding Categorical Variables:** Transforming categorical variables into some numerical variation
- **Scaling:** Applying a scaler that transforms all of our data on the same numerical scale
