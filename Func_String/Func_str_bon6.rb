=begin
    
We have chars mapping: A => T, C => G. 
You need to create a converter for strings with the results: 
"ATTGC" -> returns "TAACG", "GTAT" -> returns "CATA"
    
=end

my_string = gets
h = {"A" => "T", "T" => "A", "C" => "G", "G" => "C"}
res = my_string.gsub(h)