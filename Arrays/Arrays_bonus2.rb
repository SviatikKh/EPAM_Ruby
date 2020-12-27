=begin

You need to find out a unique value in array, 
you are given arrays:
- [ 1, 1, 1, 2, 1, 1 ] => 2
- [ 0, 0, 0.55, 0, 0 ] => 0.55
- [3,1,5,3,7,4,1,5,7] => 4

=end

a = [ 1, 1, 1, 2, 1, 1 ]

x = a.detect {|e| a.count(e) == 1}
puts x
