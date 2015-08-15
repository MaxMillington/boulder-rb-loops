# traditional for loop that goes through each thing in an array of things


animals = ['monkeys', 'giraffs', 'elephants', 'lions']



for animal in animals
  puts "Animal: #{animal}"
end



# Ruby has a plethora of built in for loop methods that make writing for loops easy.
# The below example is the same as the above, but written in a more easily preferred "ruby",
# style.

animals = ['monkeys', 'giraffs', 'elephants', 'lions']


animals.each do |animal|
  puts "Animal: #{animal}"
end


# All of Ruby's enumerable methods can be recreated with simple for loops. For example, here
# is "find."

@words = ["capricious", "berry", "unicorn", "bag", "apple", "festering", "pretzel", "pencil"]
@found = nil
for word in @words
  if word.length == 7
    @found = word
    break
  end
end

p @found


words = ["capricious", "berry", "unicorn", "bag", "apple", "festering", "pretzel", "pencil"]

found = words.find do |word|
  word.length == 7
end

p found

