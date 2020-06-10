arr = 
[
1, 1, 1, 0, 0, 0,
0, 1, 0, 0, 0, 0,
1, 1, 1, 0, 0, 0,
0, 0, 2, 4, 4, 0,
0, 0, 0, 2, 0, 0,
0, 0, 1, 2, 4, 0
]

array_of_sums = []
p array_of_sums

# how to find one hour glass sum starting with i element in the top left:
# sum = 0
# i=20
# topRow = 1
# sum += arr[i] + arr[i+2] + arr[topRow*6+i+1] + arr[2*topRow*6+i] + arr[2*topRow*6+i+2]
# p sum
p "Printing the sums..."
i=0
topRow = 1
lastTopLeftOfHourglass = 3*topRow*6+i+4
p "lastTopLeftOfHourglass is #{lastTopLeftOfHourglass}"
while i<lastTopLeftOfHourglass
  sum = 0
  # p "top left (arr[i]) is #{arr[i]}." 
  # p "top right (arr[i+2]) is #{arr[i+2]}."
  # p "middle (arr[topRow*6+i+1]) is #{arr[topRow*6+i+1]}"
  # p "bottom left (arr[2*topRow*6+i]) is #{arr[2*topRow*6+i]}"
  # p "bottom right (arr[2*topRow*6+i+2]) is #{arr[2*topRow*6+i+2]}"
  sum += arr[i] + arr[i+2] + arr[topRow*6+i+1] + arr[2*topRow*6+i] + arr[2*topRow*6+i+2]
  p "***THIS HOURGLASS SUM IS #{sum}***"
  array_of_sums<<sum
  i+=1
end
p "end of sums"

p array_of_sums
p array_of_sums.max
return array_of_sums.max