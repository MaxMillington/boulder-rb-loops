# traditional for loop that goes through each thing in an array of things


animals = ['monkeys', 'giraffs', 'elephants', 'lions']



for animal in animals
  # puts "Animal: #{animal}"
end



# Ruby has a plethora of built in for loop methods that make writing for loops easy.
# The below example is the same as the above, but written in a more easily preferred "ruby",
# style.

animals = ['monkeys', 'giraffs', 'elephants', 'lions']


animals.each do |animal|
  # puts "Animal: #{animal}"
end

# Relevant statements:

# Break terminates the internal loop

for i in 0..5
  if i > 2 then
    break
  end
  # puts "Value of local variable is #{i}"
end



# Next jumps to the next iteration in the internal loop.


for i in 10..15
  if i < 12 then
    next
  end
  # puts "Value of local variable is #{i}"
end



# Redo restarts the iteration of the internal loop without checking loop conditions.

# for i in 0..5
#   if i < 2 then
#     puts "Value of local variable is #{i}"
#     redo
#   end
# end



# Retry restarts the invocation of the iterator call.


# for i in 1..5
#   retry if  i > 2
#   puts "Value of local variable is #{i}"
# end


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

# p @found


words = ["capricious", "berry", "unicorn", "bag", "apple", "festering", "pretzel", "pencil"]

found = words.find do |word|
  word.length == 7
end

# p found


# Here is "group_by:"

words = ["sue", "alice", "steve", "sally", "adam", "fort", "tops", "dog", "cat"]
grouped = Hash.new {|hash, key| hash[key] = []}
for word in words
  grouped[word.length].push(word)
end

# p grouped



words = ["sue", "alice", "steve", "sally", "adam", "fort", "tops", "dog", "cat"]
grouped = words.group_by do |word|
  word.length
end


# p grouped