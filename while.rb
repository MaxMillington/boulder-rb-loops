# Ruby has a 'while' loop that will execute a block of code while a condition
# is true. Like recursive loops, they have the potential to go on forever. Moreover,
# I find that it is easier to make mistakes with while loops. Thus, a 'for'
# loop is usually preferable to a while loop. However, a 'while' loop is
# essential when you don't know how many times you will need to execute a loop. For
# example, I might want to roll a die until I roll a six. It might take 1 roll to get
# a six, it might take 100.



number = 1

while number < 10
  p "#{number} is a number less than 10."
  number += 1
end

# The "while" modifier can initialize the loop or be added to the end by using
# 'begin.' However, here the code is executed before the conditional is evaluated.

number = 1

begin
  p "#{number} is a number less than 10."
  number += 1
end while number < 10


# DEAF GRANDMA EXERCISE
# If you don't input anything (just hit enter) she responds with WHAT?!
# If you ask a question with all lower-case letters, she responds with SPEAK UP, KID!
# If you ask a question in all upper-case letters, she responds with NO, NOT SINCE 1946!
# The first time you say GOODBYE! she says LEAVING SO SOON?
# The second time you say GOODBYE! she says LATER, SKATER! and the program exits.


bye_counter = 0
ready_to_quit = false
#
# puts "HEY KID!"
#
# while ready_to_quit == false
#   input = gets.chomp
#   if input == ""
#     puts "WHAT?"
#   elsif input.downcase == input
#     puts "SPEAK UP KID!"
#   elsif "GOODBYE!" == input
#     if bye_counter == 0
#       bye_counter += 1
#       puts "LEAVING SO SOON?"
#     else
#       ready_to_quit = true
#     end
#   elsif input.upcase == input
#     puts "NO, NOT SINCE 1946!"
#   end
#
# end
#
# puts "LATER, SKATER!"
#

