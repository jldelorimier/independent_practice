# you have an array of n empty arrays ¿where each array has n elements?
# you have a variable lastAnswer, that starts at 0

# The  types of queries that can be performed on your list of sequences () are described below:
# Query: 1 x y
# 1) Find the array at index ((x XOR lastAnswer)%N) in your array of arrays.
# 2) Add y to the end of that array.
# Query: 2 x y
# Find the sequence, , at index  in .
# Find the value of element  in  (where  is the size of ) and assign it to .
# Print the new value of  on a new line

# sample input:
n = 2
lastAnswer = 0
q = 5 # number of queries
# those 5 queries:
[1, 0, 5]
[1, 1, 7]
[1, 0, 3]
[2, 1, 0]
[2, 1, 1]

# Commment from a confused user: 
  # Size is the y % length of seqList[index].

  # So it is the length of the sub-array in the seqList array with an index ( seq ) calcuated from the original XOR ( ( x ^ lastAnswer ) % N ).

  # Size = y % len( seqList[seq] )


