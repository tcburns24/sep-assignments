# attempt no.1

def rcsv_bin_search(array, value)
	low = 0
	high = array.length - 1
	mid = (high + low) / 2
	if array[low] == value
		return array[low]
	elsif array[mid] == value
		return array[mid]
	elsif array[high] == value
		return array[high]
	elsif array[mid] > value
		high = mid - 1
		rcsv_bin_search(array, value)
	elsif array[mid] < value
		low = mid + 1
		rcsv_bin_search(array, value)
	end
end


# attempt no.2

def rcsv_bin_search(array, value)
	low = 0
	high = array.length - 1
	mid = (high + low) / 2
	if array[high] == value
		return array[high]
	elsif array[mid] == value
		return array[mid]
	elsif array[low] == value
		return array[low]
	end
	
	if array[mid] < value
		low = mid + 1
		rcsv_bin_search(array, value)
	else 
		high = mid - 1
		rcsv_bin_search(array, value)
	end
end

