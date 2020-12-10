=begin
    
В змінній year збігається рік. Визначте чи є він високосним. Рік буде високосним в
двох випадках: або він ділиться на 4, але при цьому не ділиться на 100, або
ділиться на 400
    
=end

def is_leap_year(year)
    if (year % 4 == 0 && year % 100 != 0) || year % 400 == 0
        puts 'Leap'
    else 
        puts 'Not leap'

end
end

is_leap_year(2020)