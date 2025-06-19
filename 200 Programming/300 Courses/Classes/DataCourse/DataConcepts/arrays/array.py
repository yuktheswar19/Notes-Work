# String = ['a','b','c','d']
# String.insert(0,'x') # ----> O(1)
# String[2:2] = ['alien'] # -----> O(n/2)
# print(String)


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