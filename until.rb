# Ruby's until loop works just like the while loop only it executes code while the condition
# is false as opposed to true.



number = 1

until number == 10
  p "#{number} is a number less than 10."
  number += 1
end

# And with a begin statement.

number = 1

begin
  p "#{number} is a number less than 10."
  number += 1
end until number == 10





bye_counter = 0
ready_to_quit = false

puts "HEY KID!"

until ready_to_quit
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

