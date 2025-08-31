A for loop lets you **do something multiple times, once for each element in a sequence**

## For Loop

```python
for i in range(5):
	print(i)
```


The **start, stop, and step** concepts are used to control how a sequence is generated, especially in functions like Python's

- **Start**: The value where the sequence begins (inclusive). The first number in the sequence.
- **Stop**: The value where the sequence ends (exclusive). The sequence goes up to but does not include this number.
- **Step**: How much the sequence increments (or decrements) each time. It is the gap between consecutive numbers.


```python
for i in range(1, 10, 2):
    print(i)

```

- **Start = 1**: Sequence starts at 1
- **Stop = 10**: Sequence goes up to, but does not include 10
- **Step = 2**: Sequence increases by 2 each time

output:
```python
1, 3, 5, 7, 9
```


**for loop can also be used to iterate over collection of characters which is a string**

```python
str = "yuktheswar"

for i in str:
	print(i,end=' ,')
```

output:
```python
y ,u ,k ,t ,h ,e ,s ,w ,a ,r ,
```


## While Loop

while loop will continue to execute as long as its true 

- A temporary variable like **count** is used in a while loop to **keep track of how many times the loop has run** or to control the loop condition.

```python
count = 0

while count < 5 :
	print(count + 1, end=',')
count += 1
```

output:
```
1,2,3,4,5,
```


## Loop control statements

### Break
- The break statement exits the loop prematurely 

```python
for i in range(10):
	if i == 5:
		break
	print(i)
```

### Continue 
- The continue statements skips the current iteration and continues with the next 

```python
for i in range(10):
	if i%2 == 0:
		continue
	print(i,end='|')
```

output:
```python
1|3|5|7|9|
```


### Pass
- The pass statement is null operation and its nothing 


```python
for i in range(5):
	if i == 3:
		print('The number is ',i)
		pass
	print(i)
```

output:
```python
0 
1 
2 
The number is 3 
3 
4
```


## Nested Loops 
- A loop inside a loop 

A **nested loop** is a loop inside another loop. The **outer loop** runs once, and for each time it runs, the **inner loop** runs completely through all its values. This means the inner loop repeats fully for every single iteration of the outer loop.

```python
for i in range(3):
	for j in range(2):
		print(f"i:{i} and j:{j}")
```



## Problems 

### Printing the sum of n natural numbers using while and for 

- **While** :
	```python
	
	def whilenatural(n):

		count = 1
		sum = 0
		
		while count <=n:
			sum +=count
			count +=1
		print(sum)
	whilenatural(10)
	```

- **For**:
	```python
	def natural(n):
		sum = 0
		for i in range(1,n+1,1):
			sum += i
		print(sum)
	natural(10)
	```


**Note :** The **sum** variable is very important in both the while loop and for loop programs because it **stores the total accumulated value** as numbers are added together.

- **Stores the running total:** The sum variable keeps track of all the values added so far. Without it, the program wouldn't be able to remember the total as it loops through each number.
- **Updated in each iteration:** During every step (iteration) of the loop, the current number is added to the sum. This way, the sum gradually increases until the loop ends.
- **Final result:** After the loop finishes, the sum contains the sum of all numbers from 1 to n, which is what we want to calculate.
- **Essential for accumulation tasks:** Whenever you want to add or accumulate values in a loop, you must have a variable like sum to collect that running total.



### Prime Numbers
- The prime numbers are divisible by 1 and itself

display the prime numbers between 1 and 100 

