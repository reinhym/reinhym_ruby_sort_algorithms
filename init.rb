#sample sort algorithms implemented in ruby

$:.unshift((File.join('.', 'lib')))
require 'random_number_array_generator'
require 'bubblesort'
require 'mergesort'

number_array = RandomNumberArrayGenerator.create(65535/10)
bubble_sort_array = BubbleSort.sort_and_verify(number_array)
mergesort_array = MergeSort.sort_and_verify(number_array)