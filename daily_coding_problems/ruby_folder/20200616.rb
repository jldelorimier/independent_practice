# 2. Given an array of integers, return a new array such that each element at index i of the new array is the product of all the numbers in the original array except the one at i.

# For example, if our input was [1, 2, 3, 4, 5], the expected output would be [120, 60, 40, 30, 24]. If our input was [3, 2, 1], the expected output would be [2, 3, 6].

# input = [1, 2, 3, 4, 5]
# output = []

# i = 0
# product = 1
# while i< input.length
#   product *= input[i]
#   i+=1
# end

# p product

# i=0
# while i<input.length
#   product /= input[i]
#   output << product
#   i+=1
# end

# p output

# REWRITE WITH EACH DO

# def productExcluder(input)
#   masterProduct = 1
#   input.each do |number|
#     masterProduct *= number
#   end

#   output = []
#   input.each do |number|
#     product = masterProduct / number
#     output << product
#   end
#   return output
# end

# p productExcluder([1, 2, 3, 4, 5])
# p productExcluder([3, 2, 1])
# p productExcluder([1, 2, 3, 4, 5, 6])

# Sean's solution:

def array_of_other_products(array)
  total = array.reduce(:*)
  p total
  array.map do |number|
    p number
    total / number
  end
end

p array_of_other_products([1, 2, 3, 4, 5])
# p array_of_other_products([3, 2, 1])
# Follow-up: what if you can't use division?

