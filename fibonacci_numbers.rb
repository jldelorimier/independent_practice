sequence = [1, 1]

def fibonacci(array)
  while true
    # lastElement = array[array.length-1]
    # secondToLast = array[array.length-2]
    # newNumber = lastElement + secondToLast
    newNumber = array[-1]+array[-2]
    if newNumber < 4000000
      array << newNumber
    else 
      break
    end
    # p array
  end
end

fibonacci(sequence)

p sequence

sumEvens = 0
sequence.each do |number|
  if number.even?
    sumEvens += number
  end
end

p sumEvens