class SelectionSort
	
	@@label = "selection sort"
	def self.label
		return @@label
	end
	
	def self.sort!(number_array)
		
		return if 1 > number_array.length
		
		for j in 0..number_array.length-2
			lowest = j
			for i in j..number_array.length-1
				lowest = i if number_array[i] < number_array[lowest]
			end
			if j != lowest
				former_lowest = number_array[j]
				number_array[j] = number_array[lowest]
				number_array[lowest] = former_lowest
			end
		end
		
	end
	
end