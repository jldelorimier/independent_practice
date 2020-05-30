# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?

# number = 600851475143


# number = 600

# i = 1
# factorsOfNumber = []
# while i < number
#   if number % i == 0
#     factorsOfNumber << i
#   end
#   i += 1
# end

# p factorsOfNumber

primeNumbers = []
testNumber = 7

j = 2
while j < testNumber
  if testNumber % j == 0
    break
  else
    primeNumbers << j
    j+=1
  end
end

p primeNumbers