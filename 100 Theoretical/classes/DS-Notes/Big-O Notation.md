# Big-O Notation

## Definition
- Describes how algorithm runtime grows as input size grows
- Measures worst-case scenario (maximum time required)

## Key Concepts
- **O(1)**: Constant time (runtime independent of input size)  
- 
## Common Complexity Causes
| Operation Type       | Examples                     |
|----------------------|------------------------------|
| Arithmetic Operations | `+`, `-`, `*`, `/`          |
| Comparisons          | `<`, `>`, `==`              |
| Looping              | `for`, `while`              |
| Function Calls       | `function()`                 |

## Time Complexity Hierarchy
| Big O       | Name          | Description                                  |
|-------------|---------------|----------------------------------------------|
| O(1)       | Constant      | Single operation, no loops                  |
| O(log n)   | Logarithmic   | Divide-and-conquer (e.g., binary search)    |
| O(n)       | Linear        | Single loop through input                   |
| O(n log n) | Linearithmic  | Efficient sorting (e.g., merge sort)        |
| O(n²)      | Quadratic     | Nested loops                                |
| O(n³)      | Cubic         | Triple nested loops                         |
| O(2ⁿ)      | Exponential   | Recursive solutions (e.g., Fibonacci)       |
| O(n!)      | Factorial     | Permutations, traveling salesman            |

## Data Structure Complexities
| Structure          | Access | Search | Insertion | Deletion | Space  |
|--------------------|--------|--------|-----------|----------|--------|
| Array             | O(1)   | O(n)   | O(n)      | O(n)     | O(n)   |
| Stack             | O(n)   | O(n)   | O(1)      | O(1)     | O(n)   |
| Queue             | O(n)   | O(n)   | O(1)      | O(1)     | O(n)   |
| Singly Linked List| O(n)   | O(n)   | O(1)      | O(1)     | O(n)   |
| Hash Table        | N/A    | O(n)*  | O(n)*     | O(n)*    | O(n)   |

> *Hash table complexities assume minimal collisions (typically O(1) with good hashing)


# Example codes from Notations

####  O(1) — Constant Time

```python
# Array
nums = [1, 2, 3]
nums.append(4)    # push to end
nums.pop()        # pop from end
nums[0]           # lookup
nums[1]
nums[2]

# HashMap / Set
hashMap = {}
hashMap["key"] = 10     # insert
print("key" in hashMap) # lookup
print(hashMap["key"])   # lookup
hashMap.pop("key")      # remove

```


## O(n) — Linear Time

```python
nums = [1, 2, 3]
sum(nums)           # sum of array
for n in nums:      # looping
    print(n)

nums.insert(1, 100) # insert middle
nums.remove(100)    # remove middle
print(100 in nums)  # search

# sometimes even nested loops can be O(n)
# (e.g. monotonic stack or sliding window)

```

## O(n^2) — Quadratic Time

```python
# Traverse a square grid
nums = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
for i in range(len(nums)):
    for j in range(len(nums[i])): 
        print(nums[i][j])

# Get every pair of elements in array
nums = [1, 2, 3]
for i in range(len(nums)):
    for j in range(i + 1, len(nums)):
        print(nums[i], nums[j])

# Insertion sort (insert in middle n times -> n^2)
```


## O(n * m) — Nested Loops with Different Sizes

```python
# Get every pair of elements from two arrays
nums1, nums2 = [1, 2, 3], [4, 5]
for i in range(len(nums1)):
    for j in range(len(nums2)):
        print(nums1[i], nums2[j])

# Traverse rectangle grid
nums = [[1, 2, 3], [4, 5, 6]]
for i in range(len(nums)):
    for j in range(len(nums[i])):
        print(nums[i][j])

```


## O(log n) — Logarithmic Time

```python
# Binary search
nums = [1, 2, 3, 4, 5]
target = 6
l, r = 0, len(nums) - 1
while l <= r:
    m = (l + r) // 2
    if target < nums[m]:
        r = m - 1
    elif target > nums[m]:
        l = m + 1
    else:
        print(m)
        break
```