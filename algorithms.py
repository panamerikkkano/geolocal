## ----   start   heapsort    ----
def heapify(arr, n, i): 
    largest = i # Initialize largest as root 
    l = 2 * i + 1	 # left = 2*i + 1 
    r = 2 * i + 2	 # right = 2*i + 2 
    # See if left child of root exists and is 
    # greater than root 
    if l < n and arr[i] < arr[l]: 
        largest = l 
    # See if right child of root exists and is 
    # greater than root 
    if r < n and arr[largest] < arr[r]: 
        largest = r 

    # Change root, if needed 
    if largest != i: 
        arr[i],arr[largest] = arr[largest],arr[i] # swap 

    	# Heapify the root. 
        heapify(arr, n, largest) 

# The main function to sort an array of given size 
def heapSort(entrada):
    arr = entrada.copy()
    n = len(arr) 

    # Build a maxheap. 
    for i in range(n, -1, -1): 
    	heapify(arr, n, i) 

    # One by one extract elements 
    for i in range(n-1, 0, -1): 
    	arr[i], arr[0] = arr[0], arr[i] # swap 
    	heapify(arr, i, 0) 
    return arr

## ----   end heapsort    ----

## ----   start   quickSort    ----
def quickSort(arr_input):
    alist = arr_input.copy()
    quickSortHelper(alist,0,len(alist)-1)
    return alist
def quickSortHelper(alist,first,last):
    if first<last:
        splitpoint = partition(alist,first,last)
        quickSortHelper(alist,first,splitpoint-1)
        quickSortHelper(alist,splitpoint+1,last)
def partition(alist,first,last):
    pivotvalue = alist[first]
    leftmark = first+1
    rightmark = last
    done = False
    while not done:
        while leftmark <= rightmark and alist[leftmark] <= pivotvalue:
            leftmark = leftmark + 1
        while alist[rightmark] >= pivotvalue and rightmark >= leftmark:
            rightmark = rightmark -1
        if rightmark < leftmark:
            done = True
        else:
            temp = alist[leftmark]
            alist[leftmark] = alist[rightmark]
            alist[rightmark] = temp
    temp = alist[first]
    alist[first] = alist[rightmark]
    alist[rightmark] = temp
    return rightmark

## ----   end   quickSort    ----

## ----  start counting_sort ----
def counting_sort(array_input):
    array = array_input.copy()
    cad = []
    max_n = 0
    for a in array:
        if a > max_n:
            max_n = a
    cad = [ 0 for i in range(max_n + 1) ]
    salida = [ None for i in range( max_n + 1) ]
    for a in array:
        cad[a]+=1
    for i in range(len(cad)-1):
        cad[i+1]+=cad[i]
    for index in array:
        salida[cad[index]] = index
        cad[index]-=1
    output = []
    for i in range(len(salida)):
        if salida[i] == None:
            continue
        output.append(salida[i])
    return output

## ----  end counting_sort ----

## ---- start radixsort ----
def flatten(some_list):
    """
    Flatten a list of lists.
    Usage: flatten([[list a], [list b], ...])
    Output: [elements of list a, elements of list b]
    """
    new_list = []
    for sub_list in some_list:
        new_list += sub_list
    return new_list
 
def radix(input_list, idex=None, size=None):
    some_list = input_list.copy() 
    """
    Recursive radix sort
    Usage: radix([unsorted list])
    Output: [sorted list]
    """
    # Initialize variables not set in the initial call
    if size == None:
        largest_num = max(some_list)
        largest_num_str = str(largest_num)
        largest_num_len = len(largest_num_str)
        size = largest_num_len
 
    if idex == None:
        idex = size
 
    # Translate the index we're looking at into an array index.
    # e.g., looking at the 10's place for 100:
    # size: 3
    # idex: 2
    #    i: (3-2) == 1
    # str(123)[i] -> 2
    i = size - idex 
 
    # The recursive base case.
    # Hint: out of range indexing errors
    if i >= size:
        return some_list
 
    # Initialize the bins we will place numbers into
    bins = [[] for _ in range(10)]
 
    # Iterate over the list of numbers we are given
    for e in some_list:
        # The destination bin; e.g.,:
        #   size: 5
        #      e: 29
        #  num_s: '00029'
        #      i: 3
        # dest_c: '2'
        # dest_i: 2
        num_s  = str(e).zfill(size)
        dest_c = num_s[i]
        dest_i = int(dest_c) 
        bins[dest_i] += [e]
 
    result = []
    for b in bins:
        #If the bin is empty it skips the recursive call
        if b == []:
            continue
        # Make the recursive call
        # Sort each of the sub-lists in our bins
        result.append(radix(b, idex-1, size))
 
    # Flatten our list
    # This is also called in our recursive call,
    # so we don't need flatten to be recursive.
    flattened_result = flatten(result)
 
    return flattened_result
## ---- end radixsort ----


## ---- start bucketsort ----

def insertion_sort(bucket):
    for i in range (1, len (bucket)):
        var = bucket[i]
        j = i - 1
        while (j >= 0 and var < bucket[j]):
            bucket[j + 1] = bucket[j]
            j = j - 1
        bucket[j + 1] = var


def bucket_sort(input_list):
    # Find maximum value in the list and use length of the list to determine which value in the list goes into which bucket 
    max_value = max(input_list)
    size = max_value/len(input_list)

    # Create n empty buckets where n is equal to the length of the input list
    buckets_list= []
    for x in range(len(input_list)):
        buckets_list.append([]) 

    # Put list elements into different buckets based on the size
    for i in range(len(input_list)):
        j = int (input_list[i] / size)
        if j != len (input_list):
            buckets_list[j].append(input_list[i])
        else:
            buckets_list[len(input_list) - 1].append(input_list[i])

    # Sort elements within the buckets using Insertion Sort
    for z in range(len(input_list)):
        insertion_sort(buckets_list[z])
            
    # Concatenate buckets with sorted elements into a single list
    final_output = []
    for x in range(len (input_list)):
        final_output = final_output + buckets_list[x]

    return final_output

## ---- end bucketsort ----
