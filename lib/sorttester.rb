require 'random_number_array_generator'

require 'bubblesort'
require 'selectionsort'
require 'mergesort'
require 'selectionsort'
require 'insertionsort'
require 'quicksort'

class SortTester
	
	def self.is_sorted_correctly(control_array, working_array)
		control_array.each_index { |i| return false if control_array[i] != working_array[i] }
		return true
	end
	
	def self.test_sort(number_array, control_array, sort_method)
		working_array = number_array.dup
		puts "Testing #{sort_method.label} implementation..."
		start_time = Time.now
		sort_method.sort!(working_array)
		time_taken = (Time.new-start_time)*1000
		if is_sorted_correctly(control_array, working_array)
			print "SUCCESS: #{sort_method.label} implementation verified successfully, time taken = #{time_taken.to_i}ms\n\n"
		else
			print "FAILURE: #{sort_method.label} implementation has failed verification, time taken = #{time_taken.to_i}ms\n\n"
		end
	end
	
	def self.begin
		number_array = RandomNumberArrayGenerator.create(65535/13)
		print "\nBeginning sort testing suite...\nworking on #{number_array.length} elements per sort method\n\n"
		control_array = number_array.dup.sort
		test_sort(number_array, control_array, QuickSort)
		test_sort(number_array, control_array, MergeSort)
		test_sort(number_array, control_array, SelectionSort)
		test_sort(number_array, control_array, InsertionSort)
		test_sort(number_array, control_array, BubbleSort)
	end
	
end