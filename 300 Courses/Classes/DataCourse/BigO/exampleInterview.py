#Brute force method


def contains(a,b):
    for char1 in range(len(a)):
        for char2 in range(len(b)):
            if a[char1] == b[char2]:
                return True 
            return "Doesn't exsists in array" 

#print(contains([1,2,3,4,5],[1,6,7,8]))


# Time complexity is O(n^2)

def sumsearch(arr,target):

    for i in range(len(arr)): #Bottle neck
        for j in range (i+1,len(arr)):  #Bottle neck so efficiency issue
            if arr[i] + arr[j] == target:
                 return "It is present"
    return "Not present"


#print(sumsearch([1,2,4,5,6],69)) #This is also O(n^2) 



# OPTIMAL SOLUTION FOR FINDING THE SUM OF ELEMENTS IN ARRAY == TARGET


def optimalsearch(arr,target):

    map = {}

    for value,idx in enumerate(arr):
        if target - value in map:
            return "It is present"
        map[idx] = value
    return "Not present"
            

print(optimalsearch([1,2,3,4,5,6],70)) # complexity O(n)

