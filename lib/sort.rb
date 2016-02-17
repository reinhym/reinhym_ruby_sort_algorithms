class Sort
	
	def self.validate(original_array, sorted_array, sort_name, start_time)
		control_array = original_array.dup.sort
		verified = true
		sorted_array.each_index do |x|
			if sorted_array[x] != control_array[x]
				verified = false
			end
			break unless verified
		end
		
		if verified
			puts "SUCCESS: #{sort_name} implementation verified, time elapsed = #{((Time.new-start_time)*1000.0).to_i}ms"
			return sorted_array
		else
			puts "FAILURE: #{sort_name} implementation failed verification"
			return nil
		end
	end
	
end