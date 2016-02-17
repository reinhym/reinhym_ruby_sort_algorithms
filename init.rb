#sample sort algorithms implemented in ruby

$:.unshift((File.join('.', 'lib')))
require 'random_number_array_generator'
require 'bubblesort'
require 'selectionsort'
require 'mergesort'

number_array = RandomNumberArrayGenerator.create(65535/20)
bubble_sort_array = BubbleSort.sort_and_verify(number_array)
selection_sort_array = SelectionSort.sort_and_verify(number_array)
merge_sort_array = MergeSort.sort_and_verify(number_array)