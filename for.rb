# traditional for loop that goes through each thing in an array of things


count = [1, 2, 3, 4, 5]


for number in count
  puts "This is count #{number}"
end



# Ruby has a plethora of built in for loop methods that make writing for loops easy.
# The below example is the same as the above, but written in a more easily recognizably "ruby",
# style.

animals = ['monkeys', 'giraffs', 'elephants', 'lions']


animals.each do |animal|
  puts "Animal: #{animal}"
end




change = [1, 'pennies', 2, 'dimes', 3, 'quarters']
