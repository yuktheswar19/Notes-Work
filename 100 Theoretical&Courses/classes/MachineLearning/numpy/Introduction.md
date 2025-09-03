NumPy is an open-source Python library used for numerical and scientific computing. It provides support for large, multi-dimensional arrays and matrices, along with a collection of high-level mathematical functions to efficiently operate on these arrays. NumPy is faster and more memory-efficient than regular Python lists for numerical data and is widely used in data science, engineering, and scientific fields


## Numpy uses arrays 

arrays are the primary use for numpy for homogeneous calculations , they can  be used for preferred tasks like scientific computing . image processing or when performing repeated calculations 

- To access a particular element in an array , it know where to jump to and how number of bits it needs to just 

**Example** :
```python
x = [ 1,2,3 ]
```

Taking this example of 3 elements and the difference between these 3 elements is 32 bit 
from 1 ----> 2 (32 bits )
- If i need to access the element at 3 it knows and jumps exactly 64 bits as each number is 32 bits 


### Pointers : 
- In NumPy, a pointer can be simply defined as a reference to the memory location where the array data is stored. This allows different variables to share the same data without copying, enabling efficient memory usage and fast operations.



## Note
**1. Every element in the array must be of the same type and size.**
**2. If an array's elements are also arrays, those inner arrays must have the same type and number of elements as each other.**

- Good Example :

|  4 | 10 |  8 | -3 |
|----|----|----|----|
| 20 | 12 |  8 |  5 |
|  8 |  1 | 22 | 10 |
|  7 |  2 |  2 |  9 |
|  8 |  5 | 21 |  1 |

- Bad Example 

|  4 | 10 |  8 |    |
|----|----|----|----|
| 20 | 12 |  8 |  5 |
|  8 |  1 |    |    |
|  7 |  2 |  2 |  9 |
|  8 |    |    |    |



## Floats & strings 

- ### Float
	- In a 2D NumPy array, if any row contains a float, **all values in the array become floats** because NumPy enforces a common data type for efficiency.

Example :

```python
foo = np.array([
	[1,2,3,4],
	[1.2,2.4,5.6,9.9]
])
```

output:
```python
#dtype('float64')
[[1. 2. 3. 4. ] 
[1.2 2.4 5.6 9.9]] 
```

- ### String
	- If any element in a 2D NumPy array is a string, **all elements are converted to strings**, because NumPy enforces one data type for the entire array

Example :

```python
arr = np.array([
    [1, 2, 3],           # integers
    ["a", "b", "c"]      # strings
])

print(arr)
print(arr.dtype)
```

output:
```python
[['1' '2' '3']
 ['a' 'b' 'c']]
<U1
```





