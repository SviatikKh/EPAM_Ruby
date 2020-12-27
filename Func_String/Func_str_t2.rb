=begin

Є рядок наступного вигляду: 4 літери, потім пробіл, потім ще 4 літери. 
Наприклад, такий рядок 'ФЫВА олдж'.
Треба перетворити на наступний рядок 'АВЫФ ждло'. !!!! UTF-8

=end

a = 'ФЫВА олдж'
r = a.split(' ')
first_part = r[0].reverse
second_part = r[1].reverse
puts first_part + " " + second_part
