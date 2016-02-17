class InsertionSort
	
	@@label = "insertion sort"
	def self.label
		return @@label
	end
	
	def self.sort!(number_array)
		for i in 1..number_array.length-1
			for j in 0..i-1
				if number_array[j] > number_array[i]
					temp = number_array[i]
					#for loops in ruby refuse to iterate ranges that decrement instead of increment
					((j+1..i).to_a.reverse).each { |k| number_array[k] = number_array[k-1] }
					number_array[j] = temp
					break
				end
			end
		end
	end
	
end