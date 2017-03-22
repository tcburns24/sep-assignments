# Quick Sort

def quick_sort(array)
  size = array.count
  if size <= 1
     return array
  end
  low = 0
  high = size - 1
  pivot = array[(size/2)]
  while low < high
    low += 1 while array[low] < pivot
    high -= 1 while array[high] > pivot
    array[low], array[high] = array[high], array[low]
  end
  quick_sort(array[0..high-1]) + quick_sort(array[high..size-1])
end
    
			
      
# Heap Sort
			
def heap_sort
  make_heap
  the_end = input.length - 1
  while the_end > 0
    input[the_end], input[0] = input[0], input[the_end]
    the_end -= 1
    sift_down(0, the_end)
  end
  input
end
      
def make_heap
  start = (input.length - 2) / 2
  while start >= 0
    sift_down(start, input.length - 1)
    start -= 1
  end
end
      
def sift_down(start, the_end)
  root = start
  while root*2+1 <= the_end
    child = root*2+1
    swap = root
    if input[swap] < input[child]
      swap = child
    end
    if (child+1 <= end) && (input[swap] < input[child+1])
      swap = child + 1
    end
    if swap != root
      input[root], input[swap] = input[swap], input[root]
      root = swap
    end
  end
end

  
# Bucket Sort
	
def bucket_sort(array, buckets)
  for j in 0...array.length
    buckets[j] = 0
  end
  for i in 0...array.length - 1
    buckets[a[i]] += 1
  end
  i = 0
  for j in 0...array.length
    for k in 0...buckets[j]
      a[i] = j
      i += 1
    end
  end
end