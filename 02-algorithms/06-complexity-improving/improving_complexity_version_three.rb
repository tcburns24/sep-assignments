# Complexity Performance

$var = 0

def quick_sort(array)
	return array if array.length <= 1
	left = []
	right = []
	pivot = array[0]
	$var += 1
	i = 1
	while i < array.length
		array[i] < pivot ? left << array[i] : right << array[i]
		$var += 1
		i+=1
	end
	$var += 1
	return quick_sort(left) + [pivot] + quick_sort(right)
end

def better_ruby(*arrays)
	combined = []
	arrays.each do |array|
		array.each do |value|
			$var += 1
			combined << value
		end
	end
	return quick_sort(combined)
end


array_of_arrays = []

num_arrays = 1
items_per_array = 5

num_arrays.times do |i|
	new_array = []
	array_of_arrays << new_array
	
	items_per_array.times do |j|
		new_array << i * items_per_array + j
	end
end

puts "my arrays: #{array_of_arrays}"
puts "-------------------"
puts better_ruby(*array_of_arrays)
puts "-------------------"
puts "number of Elements: #{num_arrays * items_per_array}"
puts "$var = #{$var}"

# works with zeros, double integers, and negatives


# Big-O = O(n log n)