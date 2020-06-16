# 1. Given a list of numbers and a number k, return whether any two numbers from the list add up to k.
# For example, given [10, 15, 3, 7] and k of 17, return true since 10 + 7 is 17.

# numbers = [10, 15, 3, 7]
# k = 17

# p "running the method"
# i=0
# while i<numbers.length
#   p "I'm running the i while loop"
#   sum=0
#   sum+=numbers[i]
#   j=0
#   while j<numbers.length
#     p "i'm running the j while loop"
#     if i==j
#       p "I chose the first j branch"
#     else sum+=numbers[j]
#       p "I'm running the second j branch"
#       if sum==k
#         p "THE SUM IS #{sum}"
#         p "I'm about to return true"
#         return true
#       else
#         p "THE SUM IS #{sum}"
#         p "I'm about to return false"
#         # return false
#       end
#     end
#     j+=1
#   end
#   i+=1
# end

# p "should be printing k rn"
# p k
# p "did you print k?"

# LET'S DO THIS WITH EACH DO INSTEAD OF A WHILE LOOP

# def sum_to_number(array, number)
#   array.each do |element1|
#     array.each do |element2|
#       next if element1 == element2
      
#       if element1 + element2 == number
#         # p "I'm about to return true"
#         return true
#       end
#     end
#   end
#   # p "I'm about to return false"
#   return false
# end

# p sum_to_number([10, 15, 3, 7], 17)
# p sum_to_number([10, 15, 5, 7], 20)

def sumNumbers(array, number)
  array.each do |element1|
    array.each do |element2|
      next if element1 == element2
      if element1+element2==number
        return true
      end
    end
  end
  return false
end

p sumNumbers([10, 15, 3, 7], 17)
p sumNumbers([10, 15, 3, 7], 20)