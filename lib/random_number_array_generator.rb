class RandomNumberArrayGenerator
	
	def self.create(number_array_size)
		number_array = Array.new(number_array_size)
		random_number_generator = Random.new
		
		#populate the array with random numbers
		number_array.each_index { |x| number_array[x] = random_number_generator.rand(65535) }
		
		return number_array
	end
	
end