=begin
    
Є рядок з 6-ти чисел (наприклад: 385934). Перевірте, чи сума перших трьох чисел
дорівнює сумі других трьох чисел. Якщо це так – виведіть 'так' інакше – 'ні'.
    
=end

n = '385934'

x = n.split('').map(&:to_i)
a1 =  x[0..2]
a2 = x[3..5]
sum1 = a1.inject(0){|sum, elem| sum = sum + elem }
sum2 = a2.inject(0){|sum, elem| sum = sum + elem }

if sum1 == sum2
    puts 'так'
else
    puts 'ні'
end
