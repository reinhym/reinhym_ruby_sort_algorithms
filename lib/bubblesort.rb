class BubbleSort
	
	@@label = "bubble sort"
	def self.label
		return @@label
	end
	
	def self.sort!(number_array)
		
		shifted = false
		loop do
			shifted = false
			for i in 0..number_array.length-2
				if number_array[i] > number_array[i+1]
					former_next_value = number_array[i+1]
					number_array[i+1] = number_array[i]
					number_array[i] = former_next_value
					shifted = true
				end
			end
			break unless shifted
		end
		
	end
	
end