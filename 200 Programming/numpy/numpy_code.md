
### Creating an array [[Introduction]]
To create an array we need to use **np.arrray([ ])** in numpy  

```python
arr = np.array([10,20,30,40,50])
print(arr)

#OUTPUT
[10 20 30 40 50]
```


**To find out the length , dimension and shape of the array** 

```python
	  arr.ndim ------> # 1
	  
	  len(arr) -------> # 5
	  
	  arr.shape -------> # (5,)
```


### Creating a 2D array 
```python
arr_2d = np.array([
	[10,20,30,40,50],
	[100,200,300,400,500]
])

#OUTPUT
[[ 10 20 30 40 50] 
[100 200 300 400 500]]
```


### To fill all the values with zero 
```python
s = (2,2)
np.zeros(s)
```

### To fill all the values with a certain object 
```python 
np.full(shape = (3,5), fill_value = 'cat')

#OUTPUT
array([['cat', 'cat', 'cat', 'cat', 'cat'],
       ['cat', 'cat', 'cat', 'cat', 'cat'],
       ['cat', 'cat', 'cat', 'cat', 'cat']], dtype='<U3')
```

### To fill the values to  a certain range 
```python
np.arange(start = 1 , stop = 5 ,step = 1)

#OUTPUT
array([1, 2, 3, 4])
```

### To fill it with random numbers 
```python
np.random.randint(low =1 , high = 7 , size = (2,3))

#OUTPUT
array([[5, 3, 2],
       [1, 6, 4]])
```



