class QuickSort
	
	@@label = "quick sort"
	def self.label
		return @@label
	end
	
	def self.swap!(number_array, i, j)
		temp = number_array[i]
		number_array[i] = number_array[j]
		number_array[j] = temp
	end
	
	def self.partition!(number_array, first, last)
		#puts "pivot reached: " + number_array.slice(first..last).to_s
		#pivot = number_array[(last-first)/2+first]
		pivot = number_array[first]
		i = first-1
		j = last+1
		loop do
			i += 1
			i = i+1 while i < last && number_array[i] < pivot
			
			j -= 1
			j = j-1 while j > first && number_array[j] > pivot
			
			return j if i >= j
			#puts "swapped: #{number_array[i]}, #{number_array[j]}, " + number_array.slice(first..last).to_s
			swap!(number_array, i, j)
			#puts "after swap: " + number_array.slice(first..last).to_s
		end
	end
	
	def self.quicksort!(number_array, first, last)
		return if first >= last
		
		pivot = self.partition!(number_array, first, last)
		self.quicksort!(number_array, first, pivot)
		self.quicksort!(number_array, pivot+1, last)
	end
	
	def self.sort!(number_array)
		self.quicksort!(number_array, 0, number_array.length-1)
	end
	
end