input1 = "aaabccddd"
output1 = "abd"

input2 = "baab"
output2 = ""

def stringReducter(string)
  string_array = string.split('')
  p string_array
  times_to_do = string_array.length 
  times_to_do.times do
    p "DOING THE TIMES THING"
    i = 0 
    while i < string_array.length
      p "RUNNING WHILE LOOP; i is #{i}"
      p "RUNNING IF STATEMENT"
      if string_array[i] == string_array [i+1]
        p "deleting at i deletes index #{i}, which is #{string_array[i]} and returns:"
        string_array.delete_at(i) 
        p string_array
        p "deleting at i deletes index #{i}, which is #{string_array[i]} and returns:"
        string_array.delete_at(i)
        p "JUST DELETED TWO: #{string_array}"
      else
        p string_array
        i+=1
      end
    end
  end
  p string_array
  reduced_string = string_array.join
  p reduced_string
end

# stringReducter("aaabccddd") #this works
# stringReducter("baab") #this works
# stringReducter("aa") #this works
# stringReducter("aaabbaaabbaaacccaaa") #this works
stringReducter("aaaccccaaaccccaaaccccaaacccc") #this works

#I am 90% confident that the above code works for every string, but it is possible there is a more efficient way to do this. At first I tried setting the times_to_do equal to the length of the array, but since we are looking for pairs, I think it will not be necessary to start the while loop from the top more than half the number of times of the length of the original string. I still think there is a more elegant way to solve this that I haven't discovered yet.

#Everytime you delete two characters, you create an opportunity for a new match between characters to be made. Which means that everytime you delete two characters, you must add one to the number of times that you run through the entire string (the while on line 13). 
#^^This actually didn't work. I had defined "number_of_times_loop" as 1 outside of the scope of the function, so I couldn't actually modify it inside of the function. I don't think it was actually affecting the number of times the while loop ran, I think it was just running the while loop how it would have without the "number of times do" and then printing out statements that included the variable.









#This works for "aaabccddd":
# def stringReducter(string)
#   # string = "aaabccddd"
#   string_array = string.split('')
#   p string_array
#   i = 0 
#   while i < string_array.length
#     p "i is #{i}"
#     if string_array[i] == string_array [i+1]
#       p "deleting at i deletes index #{i}, which is #{string_array[i]} and returns:"
#       string_array.delete_at(i) 
#       p string_array
#       p "deleting at i deletes index #{i}, which is #{string_array[i]} and returns:"
#       string_array.delete_at(i)
#       # The below code doesn't work! Because when the string at index i is deleted, the index values reset with respect to i, so the next character you need to delete is now in the same place in the array that i just was. So now you need to delete at the _new_ i, rather than at i+1 where you first identified that string_array[i] and string_array[i+1] had the same value!!!!
#       # p "deleting at i+1 deletes index #{i+1}, which is #{string_array[i+1]} and returns:"
#       # string_array.delete_at(i+1)
#       p string_array
#     else
#       p string_array
#       i+=1
#     end
#   end
#   p string_array
#   reduced_string = string_array.join
#   p reduced_string
# end

stringReducter("aaabccddd")
# stringReducter("baab")


#This worked for aaabccddd, but not for baab:
# def stringReducter(string)
#   # string = "aaabccddd"
#   string_array = string.split('')
#   p string_array
#   number_of_times_loop = 1
#   number_of_times_loop.times do
#     i = 0 
#     while i < string_array.length
#       p "i is #{i}"
#       if string_array[i] == string_array [i+1]
#         p "deleting at i deletes index #{i}, which is #{string_array[i]} and returns:"
#         string_array.delete_at(i) 
#         p string_array
#         p "deleting at i deletes index #{i}, which is #{string_array[i]} and returns:"
#         string_array.delete_at(i)
#         # The below code doesn't work! Because when the string at index i is deleted, the index values reset with respect to i, so the next character you need to delete is now in the same place in the array that i just was. So now you need to delete at the _new_ i, rather than at i+1 where you first identified that string_array[i] and string_array[i+1] had the same value!!!!
#         # p "deleting at i+1 deletes index #{i+1}, which is #{string_array[i+1]} and returns:"
#         # string_array.delete_at(i+1)
#         p string_array
#         number_of_times_loop+=1
#         p "I will go through the while loop #{number_of_times_loop} more time(s), because I just removed two elements from the array."
#       else
#         p string_array
#         i+=1
#         number_of_times_loop-=1
#         p "I will go through the while loop #{number_of_times_loop} more time(s), because I didn't delete anything from the array."
#       end
#     end
#   end
#   p string_array
#   reduced_string = string_array.join
#   p reduced_string
# end

# # stringReducter("aaabccddd")
# stringReducter("baab")

#FINAL SOLUTION:
def superReducedString(s)

  string_array = s.split('')
  p string_array
  times_to_do = string_array.length / 2
  times_to_do.times do
    p "DOING THE TIMES THING"
    i = 0 
    while i < string_array.length
      p "RUNNING WHILE LOOP; i is #{i}"
      p "RUNNING IF STATEMENT"
      if string_array[i] == string_array [i+1]
        p "deleting at i deletes index #{i}, which is #{string_array[i]} and returns:"
        string_array.delete_at(i) 
        p string_array
        p "deleting at i deletes index #{i}, which is #{string_array[i]} and returns:"
        string_array.delete_at(i)
        p "JUST DELETED TWO: #{string_array}"
      else
        p string_array
        i+=1
      end
    end
  end
  p string_array
  superReducedString = string_array.join
  if superReducedString == ""
    return "Empty String"
  else
      return superReducedString
  end

end