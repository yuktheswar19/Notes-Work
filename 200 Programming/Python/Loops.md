A for loop lets you **do something multiple times, once for each element in a sequence**


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

