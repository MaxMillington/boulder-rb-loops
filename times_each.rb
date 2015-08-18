5.times do
  "I am really really hungry."
end

foods = ["corn", "lettuce", "tomato", "cucumber", "sprouts",
          "beans", "kale", "quinoa", "coffee", "beets"]

10.times do |i|
  "I want to eat #{foods[i]}."
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

