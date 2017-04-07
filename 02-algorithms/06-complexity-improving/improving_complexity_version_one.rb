# Code Optimizations

def poorly_written_ruby(*arrays)
	combined_array = []
	arrays.each do |array|
		array.each do |value|
			combined_array << value
		end
	end
	
	sorted_array = [combined_array.delete_at(combined_array.length-1)]
	
	for val in combined_array
		i=0
		if val >= sorted_array[-1]
			sorted_array << val
		else
			while i < sorted_array.length
				if val < sorted_array[i]
					sorted_array.insert(i, val)
					break
				end
				i += 1
			end
		end
	end
	sorted_array
end

