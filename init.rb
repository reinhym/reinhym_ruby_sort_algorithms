#sample sort algorithms implemented in ruby

$:.unshift((File.join('.', 'lib')))
require 'random_number_array_generator'
require 'bubblesort'
require 'mergesort'

number_array = RandomNumberArrayGenerator.create(65535)
bubble_sort_array = BubbleSort.sort(number_array)
mergesort_array = MergeSort.sort(number_array)