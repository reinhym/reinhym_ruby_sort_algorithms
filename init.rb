#sample sort algorithms implemented in ruby

$:.unshift((File.join('.', 'lib')))
require 'random_number_array_generator'
require 'mergesort'

number_array = RandomNumberArrayGenerator.create(65535)
mergesort_array = MergeSort.sort(number_array)