arr = 
[
[1, 1, 1, 0, 0, 0],
[0, 1, 0, 0, 0, 0],
[1, 1, 1, 0, 0, 0],
[0, 0, 2, 4, 4, 0],
[0, 0, 0, 2, 0, 0],
[0, 0, 1, 2, 4, 0]
]

array_of_sums = []
p array_of_sums

i=0
while i<arr.length-2
  p "i is #{i}"
  j=0
  while j<arr[i].length-2
    p "j is #{j}"
    sum = 0
    sum+=arr[i][j]+arr[i][j+1]+arr[i][j+2]+arr[i+1][j+1]+arr[i+2][j]+arr[i+2][j+1]+arr[i+2][j+2]
    p "this hourglass sum is #{sum}"
    array_of_sums<<sum
    j+=1
  end
  i+=1
end

p array_of_sums
p array_of_sums.max
return array_of_sums.max