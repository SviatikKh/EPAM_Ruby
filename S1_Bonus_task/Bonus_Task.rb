=begin

Compare two strings by comparing the sum of their values (ASCII character code).
For comparing treat all letters as UpperCase.
Null-Strings should be treated as if they are empty strings.
If the string contains other characters than letters, treat the whole string as it would be empty.
Examples:
"AD","BC" -> equal
"AD","DD" -> not equal
"gf","FG" -> equal
"zz1","" -> equal
"ZzZz", "ffPFF" -> equal
"kl", "lz" -> not equal
null, "" -> equal
Your method should return true, if the strings are equal and false if they are not equal
    
=end

def equal(str1, str2)
    letters = ("A".."Z").to_a
    str1_arr = str1.upcase.split(//)
    str2_arr = str2.upcase.split(//)
    str1_val = 0
    for count in 0...str1_arr.length
        if !(letters.include? str1_arr[count]) 
        str1_val = 0
        break
        end  
        for counter in 0...26
        if str1_arr[count] == letters[counter]
            str1_val += letters[counter].ord 
        end
        end
    end
    str2_val = 0
    for count in 0...str2_arr.length
        if !(letters.include? str2_arr[count]) 
        str2_val = 0
        break
        end       
        for counter in 0...26
        if str2_arr[count] == letters[counter]
            str2_val += letters[counter].ord 
        end
        end
    end
    if str1_val == str2_val
        return true       
    else
        return false     
    end 
end

puts(equal("AD", "BC"))