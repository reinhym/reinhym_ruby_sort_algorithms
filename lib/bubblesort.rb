require 'sort'

class BubbleSort < Sort
	
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
	
	def self.sort_and_verify(number_array)
		start_time = Time.new
		working_array = number_array.dup
		self.sort!(working_array)
		return self.validate(number_array, working_array, "bubble sort", start_time)
	end
	
end