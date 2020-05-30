array = [1, 4, 3, 2] 
reversed_array = []

# p array

while array.length>0
  # p array [-1]
  reversed_array<<array[-1]
  # p reversed_array
  array.pop
end

return reversed_array
p reversed_array