# In recursion, space is carved out in the stack for the function's arguments and local variables,
# - The function's arguments are copied into this space
# - Control jumps to the function
# - The function's control runs
# - The function's result is copied into a return value
# - The stack is rewound to its previous position
# - Control jumps back to where the function was called
# Doing all these steps takes time, often longer than it takes to iterate through a loop.
# When many programs start, they allocate a single chunk of memory for their stack, and when
# they run out of that memory (often, but not always due to recursion), the program crashes due to a
# stack overflow. Therefore, since ruby has such a great library of enumerable methods, iterative loops
# are usually a preferable option to recursion. However, as will be shown below, this isn't always the
# case. Furthermore, some problems can only be solved with recurison.

(1 + 2 + 3 + 4)

def sum_upto(q)
  return 1 if q == 1
  return sum_upto(1) + 2 if q == 2
  return sum_upto(2) + 3 if q == 3
  return sum_upto(3) + 4 if q == 4
end

p sum_upto(4)





def second_sum_upto(q)
  return 1 if q == 1 #base case, what happens without it?
  second_sum_upto(q-1) + q
end

p second_sum_upto(100)





def plug_in(array, n)
  n.downto(0) do |element|
    array.push(element)
  end
  array
end

p plug_in([], 5)





def plug(array, n)
  return array if n < 0
  array << n
  plug(array, n-1)
end

p plug([], 7)

# array =  [], [7], [7,6], [7,6,5], [7,6,5,4], [7,6,5,4,3], [7,6,5,4,3,2], [7,6,5,4,3,2,1], [7,6,5,4,3,2,1,0]
# n     =  7,  6,   5,     4,       3,         2,           1,             0



def reverse_plug_in(array, n)
  0.upto(n) do |element|
    array << element
  end
  array
end


p reverse_plug_in([], 5)






def reverse_plug(array, n)
  return array if n < 0
  array << n
  plug(array, n-1)
  array.reverse
end

p reverse_plug([], 7)



def reverse_plug2(array, n)
  return array if n < 0
  reverse_plug2(array, n-1)
  array << n
end

p reverse_plug2([], 7)






# Fibonacci Numbers
# 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233
# Sum of the previous two number will give you the current number


def fibonacci(number)
  if number <= 1 then
    number
  else
    fibonacci(number - 1) + fibonacci(number - 2)
  end
end

# p fibonacci(20)


def fib_array(n)
  [0, 1, 1][n] ||= fib_array(n-2) + fib_array(n-1)
end

# p fib_array(100)


def matrix_fibonacci(num)
  if num == 1
    [0,1]
  else
    f = matrix_fibonacci(num/2)
    c = f[0] * f[0] + f[1] * f[1]
    d = f[1] * (f[1] + 2 * f[0])
    num.even? ? [c,d] : [d,c+d]
  end
end

# p matrix_fib(100000)

def fib_jai(quantity)
  @sequence = (1..quantity).reduce([0]) do |fibs, num|
    if num > 1
      fibs << fibs[-1] + fibs[-2]
    else
      fibs << 1
    end
  end
end


# p fib_jai(20)


def fib_calculate(number)
  numbers=[0,1]
  (number-2).times do |i|
    total = numbers[i]+numbers[i+1]
    numbers.push(total)
  end

  numbers.map{|uno| uno.to_s.rjust(numbers.last.to_s.length+1," ")}.
      each_slice(5){|due| puts due.join", "}
end

# p fib_calculate(20)



