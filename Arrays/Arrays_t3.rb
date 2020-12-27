=begin

Є масив:

books = [
{
name: 'Learning ruby, mysql and JavaScript',
author: 'Robin Snow',
price: 30,
tags: ['ruby', 'javascript', 'mysql']
},
{
name: 'Ruby for the Web: Visual QuickStart Guide',
author: 'Larry Snow',
price: 25,
tags: ['ruby']
},
{
name: 'Ruby and MySqL for Dynamic Web Sites',
author: 'Larry Snow',
price: 14.39,
tags: ['ruby', 'mysql']
},
{
name: 'Modern Ruby: New Features and Good Practices',
author: 'Josh Snow',
price: 24,
tags: ['ruby']
},
{
name: 'JavaScript and JQuery: Interactive Front-End Web Development',
author: 'Jon Snow',
price: 20,
tags: ['javascript', 'jquery']
},
{
name: 'Miss Peregrine Home for Peculiar Children',
author: 'Ransom Snow',
price: 8.18
}
]
Отримати масив відсортований за ціною книжок
Отримати відфільтрований массив книжок у яких є тег ‘ruby’

=end


books = [

    {
    
    name: 'Learning ruby, mysql and JavaScript',
    
    author: 'Robin Snow',
    
    price: 30,
    
    tags: ['ruby', 'javascript', 'mysql']
    
    },
    
    {
    
    name: 'Ruby for the Web: Visual QuickStart Guide',
    
    author: 'Larry Snow',
    
    price: 25,
    
    tags: ['ruby']
    
    },
    
    {
    
    name: 'Ruby and MySqL for Dynamic Web Sites',
    
    author: 'Larry Snow',
    
    price: 14.39,
    
    tags: ['ruby', 'mysql']
    
    },
    
    {
    
    name: 'Modern Ruby: New Features and Good Practices',
    
    author: 'Josh Snow',
    
    price: 24,
    
    tags: ['ruby']
    
    },
    
    {
    
    name: 'JavaScript and JQuery: Interactive Front-End Web Development',
    
    author: 'Jon Snow',
    
    price: 20,
    
    tags: ['javascript', 'jquery']
    
    },
    
    {
    
    name: 'Miss Peregrine Home for Peculiar Children',
    
    author: 'Ransom Snow',
    
    price: 8.18
    
    }
    
    ]


#Sorted by price 
s = books.sort {|b, a| a[:price] <=> b[:price] }
puts s

#Filtered by tag

f = books.transform_values{|arr| arr.select{|h|h[:tags].eql? 'ruby'}}
puts f

# f = books.transform_values do |value|
#     value.select {|hash| hash[:tags] == :ruby}
# end
# puts f
