=begin 

Перетворити рядок 'var_test_text' в 'varTestText'.

=end

a = 'var_test_text'
x = a.split('_')
l = x[0]
l1 = x[1].capitalize
l2 = x[2].capitalize

print(l+l1+l2)