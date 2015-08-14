# Ruby has a 'while' loop that will execute a block of code while a condition
# is true. Like recursive loops, they have the potential to go on forever. Moreover,
# I find that it is easier to make mistakes with while loops. Thus, a 'for'
# loop is usually preferable to a while loop.



number = 1

while number < 10
  p "#{number} is a number less than 10."
  number += 1
end








bye_counter = 0
ready_to_quit = false

puts "HEY KID!"

while ready_to_quit == false
  input = gets.chomp
  if input == ""
    puts "WHAT?"
  elsif input.downcase == input
    puts "SPEAK UP KID!"
  elsif "GOODBYE!" == input
    if bye_counter == 0
      bye_counter += 1
      puts "LEAVING SO SOON?"
    else
      ready_to_quit = true
    end
  elsif input.upcase == input
    puts "NO, NOT SINCE 1946!"
  end

end

puts "LATER, SKATER!"



