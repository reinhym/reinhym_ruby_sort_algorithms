class Sort
	def self.sort(number_array)
	end
	
	def self.validate(original_array, sorted_array)
		control_array = original_array.dup.sort
		sorted_array.each_index { |x| return false if sorted_array[x] != control_array[x] }
		return true
	end
end