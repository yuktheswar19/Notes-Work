Boxes = [ 1,2,3,4,5]
    
def countpairs(box):
    for bo in range (len(box)):
        for ba in range (len(box)):
            print(bo,ba)


#countpairs(Boxes) # Big O(n*2)


def boo(n):
    for i in range(len(n)):
        print("boooo")

#boo([1,2,3,4,5]) # space complexity of O(1)


def allocation(n):
    nearr = []
    for i in range(n):
        nearr.append("bo")
    return nearr

print(allocation(5)) #Space complexity O(n)
                    #We are adding additional memory to use 

