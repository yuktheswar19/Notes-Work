# **Different Approaches of Machine Learning**

- **Supervised Learning**
- **Unsupervised Learning**
- **Reinforcement Learning**

---

## **Supervised Learning**

Supervised learning is a machine learning approach where algorithms are trained on labelled datasets. Each input (called a **feature**) is paired with the correct output (called a **target**), allowing the model to learn the relationship between inputs and outputs.

### **Training Process**

- The model learns by mapping features to targets, minimizing errors between predictions and actual data labels.
- After training, the model is tested with new, unseen data for predictions.

### **Examples**

- Email spam detection
- Image recognition
- Fraud detection  
  *(Datasets contain both features and targets)*


---

# **Algorithms**

# **Regression Tasks**

## **Linear Regression**

- Linear Regression is a statistical technique used to determine the relationship between two variables:  
  - **Dependent variable** (the outcome or prediction)
  - **Independent variable** (input features for prediction)

- It predicts the value of a variable based on another variable using the equation:  

```
y = m * x + c
```


- Where `y` is the predicted value, `x` is the independent variable, `m` is the slope, and `c` is the y-intercept.

##### **What is Linear Regression Used for?**
- **Predict outcomes:** E.g., predicting sales based on advertising spend, or house prices based on size.
- **Understand relationships:** E.g., how temperature affects crop yields or price affects sales.
- **Optimize decisions:** E.g., setting optimal prices or identifying risk factors in medicine.

---

## **Multiple Linear Regression**

- Similar to linear regression, but predicts the dependent variable using multiple independent variables:

```
y = β0 + β1_X1 + β2_X2 + ... + βn*Xn
```


##### **Scenario Examples**

###### **Simple Linear Regression Example**
- **Predict:** House price based only on size (sq ft)
- **X:** Size of the house
- **Y:** Price of the house
- **Interpretation:**  
If every additional sq ft increases price by ₹200, and base price is ₹50,000:

```
Price = 50,000 + 200 * 1,000 = 250,000
```


###### **Multiple Linear Regression Example**

- **Predict:** House price based on size, bedrooms, and age
- **X1:** Size (sq ft)
- **X2:** Number of bedrooms
- **X3:** Age of house (years)
- **Y:** Price

```
Price = b0 + b1_Size + b2_Bedrooms + b3*Age
```

- **Interpretation:**  
For a 1,000 sq ft, 3-bedroom, 10-year-old house:

```
Price = 40,000 + 180_1,000 + 10,000_3 - 1,500*10
= 40,000 + 180,000 + 30,000 - 15,000 = 235,00
```


---

##  **Polynomial Regression**
`collapsed:: true`
- Like linear regression, but fits a curved line by including higher powers of the independent variable.
- **Simple linear regression:**
  ```
  y = β0 + β1*x + ε
  ```
- **Polynomial regression:**
  ```
  y = β0 + β1*x + β2*x**2 + β3*x**3 + ... + βn*x**n + ε
  ```
- **Example:**  
Predicting car price based on age, where price drops quickly at first and then levels off. Polynomial regression can capture this curve.

---

## **Support Vector Regression (SVR)**
`collapsed:: true`
- SVR predicts continuous values (e.g., temperature, prices) by creating an **epsilon-insensitive tube** around the regression line.
- **Epsilon (ε) Tube:** Margin around the regression line where errors are tolerated.
- **Support Vectors:** Points outside the tube that influence the model.
- **Slack Variables (ξ):** Penalties for points outside the tube.

- **Example:**  
Predicting house price: SVR creates a tube around the predicted price line. Most typical prices fall within the tube and are ignored; outliers (support vectors) influence the model.

---

## **Decision Tree Regression**
`collapsed:: true`
- Decision Tree Regression predicts continuous values by splitting data into subsets based on feature values, forming a tree structure.
- **Decision nodes:** Where splits occur
- **Leaf nodes:** Final predicted values

- **Example:**  
Predicting house price using features like size, bedrooms, location, and age. The tree splits data at each node (e.g., "Size > 2000 sq ft?") to minimize price differences within each group.

---

## **Random Forest Regression**

- Random Forest Regression is an ensemble method combining predictions from multiple decision trees for more accurate and stable results.

- **Building Multiple Trees:** Each tree uses a random subset of data and features.
- **Making Predictions:** Each tree predicts a value; the final prediction is the average of all trees.

- **Example:**  
Predicting house price using features like size, bedrooms, location, and age. Each tree predicts a price, and the average is the final prediction, reducing bias and variance.

---



