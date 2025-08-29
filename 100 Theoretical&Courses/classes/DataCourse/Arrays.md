
Arrays are collection of items in a list 

2 Types of arrays 

1) Static array 
2) Dynamic Array 


### Time complexity of Accessing arrays 
| Operation | Time Complexity |
|-----------|-----------------|
| Lookup    | O(1)            |
| Push      | O(1)            |
| Insert    | O(n)            |
| Delete    | O(n)            |

**Note -  Push can be O(n) as well** 
	if it is not a static array and if you need to push few more items , It should be O(n)


**Example code :**

```python
class Myarray:
    
    def __init__(self,array):
        
        self.array = array
        
    def push(self,index1):
        self.array.append(index1)
        return self.array
    
    def pop(self,index2):
        self.array.pop(index2)
        return self.array
    
    def shift(self):
        for i in range (len(self.array)-1 ):
            self.array[i] = self.array[i+1]
        self.array[-1] = 0
        return self.array[:3]
    
my_array = Myarray([1,2,3])
print(my_array.push('hi'))
print(my_array.push('bb'))
# print(my_array.pop(2))  
print(my_array.shift()) 
print(my_array.array[-1])  
```



## Array Methods:,

1) **append()** : add element at the last
2) **extend()** : combine another list at the end
3) **insert()** : insert an element at an index
4) **remove()** : remove an element from the list
5) **pop()** : remove and return the last element
6) **clear()** : remove all elements from the list
7) **index()** : returns the index of the first matched element
8) **count()** : count the number of occurrences of an element
9) **sort()** : sort the array (asc by default)
10) **reverse()** : reverse the order of the list
11) **copy()** : return a copy of the elements

