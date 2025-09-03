Lists are ordered mutable collection of items, such as words or numbers, written or stored together in an ordered or organized way. Lists can be used to group related information for easy reference or use, like a shopping list or a to-do list. In programming, a list is a data structure that holds an ordered and changeable collection of items, which may include duplicates and can be of different types

```python
list = []
print(type(list))
```

Lists are always mentioned in [ ]

## Indexing
To access elements in a list, use the index number of the element inside square brackets []. The index starts at 0 for the first element. For example:

```python
mylist = ["apple", "banana", "cherry"]
print(mylist[0])  # Output: apple - first element
print(mylist[1])  # Output: banana - second element
print(mylist[-1]) # Output: cherry - last element (negative index)
```


## append
The append() method **adds a single element to the end** of a list. It modifies the original list by placing the new item after the last current element

```python
fruits = ['apple', 'banana']
fruits.append('cherry')
print(fruits)  # Output: ['apple', 'banana', 'cherry']
```

## Insert 
The insert() method in Python **inserts a specified element at a specific position** in a list. It shifts the existing elements to the right to make space for the new element.

The insert() method adds an element at the given index in the list.

```python
list.insert(index, element)
```

- _index_: Position where the element will be inserted.
- _element_: The item to be inserted.

```python
fruits = ['apple', 'banana', 'cherry']
fruits.insert(1, 'orange')  # Inserts 'orange' at index 1
print(fruits)
```


## Remove
The remove() method deletes an element by its value from the list.
```python
list.remove(element)
```

```python
fruits = ['apple', 'banana', 'cherry', 'banana']
fruits.remove('banana')  # Removes the first 'banana' found in the list
print(fruits)
```

fruits.remove('banana') ----- **We are basically removing the first occurrence of an item** 

