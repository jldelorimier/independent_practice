# Given the root to a binary tree, implement serialize(root), which serializes the tree into a string, and deserialize(s), which deserializes the string back into the tree.

# For example, given the following Node class

# class Node:
#     def __init__(self, val, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
# The following test should pass:

# node = Node('root', Node('left', Node('left.left')), Node('right'))
# assert deserialize(serialize(node)).left.left.val == 'left.left'

# 4. Given an array of integers, find the first missing positive integer in linear time and constant space. In other words, find the lowest positive integer that does not exist in the array. The array can contain duplicates and negative numbers as well.

# For example, the input [3, 4, -1, 1] should give 2. The input [1, 2, 0] should give 3.

# You can modify the input array in-place.

# V1 Solution:
# input = [3, 4, -1, 1]

# def lowestMissingIntegerFinder(array)
#   i=1
#   while true
#     if array.include?(i)
#       i+=1
#     else return i
#     end
#   end
# end

# p lowestMissingIntegerFinder(input)
# p lowestMissingIntegerFinder([1, 2, 0])
# p lowestMissingIntegerFinder([5, 4, 3, 1, 2])

# V2 Solution:

input = [3, 4, -1, 1]

def lowestMissingIntegerFinder(array)
  i=1
  while array.include?(i) do
    i+=1
  end
  return i
end

p lowestMissingIntegerFinder(input)
p lowestMissingIntegerFinder([1, 2, 0])
p lowestMissingIntegerFinder([5, 4, 3, 1, 2])