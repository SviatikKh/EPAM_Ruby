=begin

Є масив: temperatures = [33, 15, 17, 20, 23, 23, 28, 40, 21, 19, 31, 18, 30, 31,
                         28, 23, 19, 28, 27, 30, 39, 17, 17, 20, 19, 23, 28, 30, 34, 28] 
Знайти три найменших значення, три найбільших і три середніх.

=end
temperatures = [33, 15, 17, 20, 23, 23, 28, 40, 21, 19, 31, 18, 30, 31, 28, 23, 19, 28, 27, 30, 39, 17, 17, 20, 19, 23, 28, 30, 34, 28] 

sorted_temp = temperatures.uniq.sort

puts "Min: #{sorted_temp[0..2]}" 
puts "Average #{sorted_temp[6..8]}"
puts "Max: #{sorted_temp[-3, 3]}" 

