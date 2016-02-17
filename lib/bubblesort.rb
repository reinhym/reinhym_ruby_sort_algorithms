require 'sort'

class BubbleSort < Sort
	
	def self.bubble_sort(number_array)
		
	end
	
	def self.sort(number_array)
	
		working_array = number_array.dup
		
		self.bubble_sort(working_array)
		
		if self.validate(number_array, working_array)
			puts "SUCCESS: bubble sort implementation verified"
			return working_array
		else
			puts "FAILURE: bubble sort implementation failed verification"
			return nil
		end
	end
end