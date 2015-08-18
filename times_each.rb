5.times do
  "I am really really hungry."
end


animals = ["hippo", "tiger", "elephant", "zebra"]

animals.each do |animal|
  "#{animal.capitalize} backwards is #{animal.reverse}."
end

animals.each do |animal|
  if animal.length == 5
    "#{animal.capitalize} is like any other animals in our collection."
  else
    "#{animal.capitalize} is not like the other animals."
  end
end

