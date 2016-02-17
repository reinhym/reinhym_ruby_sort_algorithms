class MergeSort
	
	@@label = "merge sort"
	def self.label
		return @@label
	end
	
	def self.merge_sort_op(number_array, first_index, last_index)
		
		return if first_index >= last_index
		
		middle_left = (last_index-first_index)/2 + first_index
		middle_right = middle_left + 1
		
		self.merge_sort_op(number_array, first_index, middle_left)
		self.merge_sort_op(number_array, middle_right, last_index)
		
		temp_array = Array.new(last_index-first_index+1)
		left_needle = first_index
		right_needle = middle_right
		
		for i in first_index..last_index
			if right_needle <= last_index && left_needle < middle_right
				if number_array[left_needle] <= number_array[right_needle]
					temp_array[i-first_index] = number_array[left_needle]
					left_needle += 1
				elsif number_array[right_needle] < number_array[left_needle]
					temp_array[i-first_index] = number_array[right_needle]
					right_needle += 1
				else
					puts "ERROR: mergesort failure, mergesort.rb line 17-22"
				end
			elsif right_needle <= last_index
				temp_array[i-first_index] = number_array[right_needle]
				right_needle += 1
			elsif left_needle < middle_right
				temp_array[i-first_index] = number_array[left_needle]
				left_needle += 1
			else
				puts "ERROR: mergesort failure, mergesort.rb line 26-31"
			end
		end
		
		for i in first_index..last_index
			number_array[i] = temp_array[i-first_index]
		end
		
	end
	
	def self.sort!(number_array)
		merge_sort_op(number_array, 0, number_array.length-1)
	end
	
end