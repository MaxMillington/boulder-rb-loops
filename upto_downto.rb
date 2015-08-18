def generate_number_sequence(n)
  0.upto(n) do |integer|
    value = integer * 3
    value.even? ? value : "ODD"
  end
end

generate_number_sequence(10)

def countdown(n)
  sequence = []
  100.downto(n) do |integer|
    sequence << integer % 3
  end
  sequence
end

countdown(50)
