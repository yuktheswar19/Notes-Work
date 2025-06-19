arr1 = [1,'a',3,4,5]
arr2 = ['a',6,0,6,7]

                

def containsCommanItem(arr1,arr2):

    map = {}

    for item in arr1:
        if item not in map:
            map[item] = True

    for value in arr2:
        if value in map:
            return True
    return False


print(containsCommanItem(arr1,arr2)) # Time complexity O(n)

