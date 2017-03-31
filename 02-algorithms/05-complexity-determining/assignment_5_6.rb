$i = 0
size = 5000

def sort(collection, from=0, to=nil)
    $i += 1
 if to == nil
   # Sort the whole collection, by default
   to = collection.count - 1
 end

 if from >= to
   # Done sorting
   return
 end

 # Take a pivot value, at the far left
 pivot = collection[from]

 # Min and Max pointers
 min = from
 max = to

 # Current free slot
 free = min

 while min < max
   if free == min # Evaluate collection[max]
     if collection[max] <= pivot # Smaller than pivot, must move
       collection[free] = collection[max]
       min += 1
       free = max
     else
       max -= 1
     end
   elsif free == max # Evaluate collection[min]
     if collection[min] >= pivot # Bigger than pivot, must move
       collection[free] = collection[min]
       max -= 1
       free = min
     else
       min += 1
     end
   else
     raise "Inconsistent state"
   end
 end

 collection[free] = pivot

 sort collection, from, free - 1
 sort collection, free + 1, to

 collection
end

unsorted_array = Array.new
sorted_array = Array.new
reverse_sorted_array = Array.new

size.times do |number|
    unsorted_array << Random.rand(size)
    sort unsorted_array.clone
    puts "unsorted #{unsorted_array.size} - #{$i}"
    $i = 0
    
    sorted_array << number
    sort sorted_array.clone
    puts "sorted #{sorted_array.size} - #{$i}"
    $i = 0
    
    reverse_sorted_array.unshift number
    sort reverse_sorted_array.clone
    puts "reverse #{reverse_sorted_array.size} - #{$i}"
    $i = 0
end
