# You receive two variables as arrays: Strings and queries.
# Strings is an array of strings that you will search from
# Queries is an array of strings that you will search for in the strings array
# Your output should be an array of integers called results; at each index the integer will reflect the number of times that query (with the same index) occurred in the string array

# Example Input: 
strings = ["ab", "ab", "abc"]
queries = ["ab", "abc", "bc"]

# Example Output:
# results = [2, 1, 0]

results = []
i=0
while i < queries.length
  queryCountAtIndexI = 0
  j=0
  while j<strings.length
    if strings[j] == queries[i]
      queryCountAtIndexI+=1
    else
    end
    j+=1
  end
  results << queryCountAtIndexI
  i+=1
end

p results
