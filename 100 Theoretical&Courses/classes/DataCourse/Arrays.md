
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

