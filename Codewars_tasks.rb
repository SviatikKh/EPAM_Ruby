=begin
    
Create a function (or write a script in Shell) 
that takes an integer as an argument and returns 
"Even" for even numbers or "Odd" for odd numbers.
    
=end

def even_or_odd(number)
    if number.to_i % 2 == 0
      return "Even"
    else
      return "Odd"
    end
  end



=begin
    
Given a number, find its opposite.
    
=end

def opposite(number)
 return number * (-1)
end


=begin
    
You get an array of numbers, return the sum of all of the positives ones.

Example [1,-4,7,12] => 1 + 7 + 12 = 20

Note: if there is nothing to sum, the sum is default to 0.
    
=end

def positive_sum(arr)
    sum = 0
    arr.each do |number|
      if number > 0
        sum += number
        end
    end
    sum
  end


=begin
    
It's pretty straightforward. Your goal is to create a function that removes 
the first and last characters of a string. You're given one parameter, the original string. 
You don't have to worry with strings with less than two characters.
    
=end

def remove_char(s)
    return s[1..-2]
  end


=begin
  In this simple assignment you are given a number and have to make it negative. But maybe the number is already negative?

Example:

makeNegative(1); # return -1
makeNegative(-5); # return -5
makeNegative(0); # return 0

=end

def makeNegative(num)
    if num >= 0
      return num * (-1)
    else
      return num * 1
    end
  end

=begin
  
Write a function called repeat_str which repeats the given string src exactly count times.

repeatStr(6, "I") // "IIIIII"
repeatStr(5, "Hello") // "HelloHelloHelloHelloHello"
  
=end

def repeat_str (n, s)
  return s * n
end

=begin
  
rescue => exception
  
end