// Given a string s, find the length of the longest substring without repeating characters.

// Example 1:

// Input: s = "abcabcbb"
// Output: 3
// Explanation: The answer is "abc", with the length of 3.

// My Solution is not working. Need to come back to this  one.

var lengthOfLongestSubstring = function(s) {
  let stringLengthsArray = []
  for (i = 0; i < s.length; i++){
      substring = s[i]
      for (j=i+1; j < s.length; j++){
        for (k=0; k < j; k++){
          console.log(`i = ${i}`)
          console.log(`s[i] = ${s[i]}`)
          console.log(`j = ${j}`)
          console.log(`s[j] = ${s[j]}`)
          if (s[j] == s[k]){
            console.log(`${s[j]} == ${s[k]} so we're in the "IF" part. k = ${k}`)
            console.log(`s[j] is ${s[j]} and s[k] is ${s[k]}. These are the same, so it should BREAK this loop and increment j.`) // Wait, should I be incrementing j here? Or k? Is this breaking out of the if statement? Or the while loop?
            break 
          }
          else {
            console.log(`${s[j]} != ${s[k]} so we're in the "ELSE" part. k = ${k}`)
          }
          console.log(`The substring WAS ${substring}`)
          substring+=s[j]
          console.log(`The current letter ${s[j]} is a brand new letter, (it hasn't shown up in this string yet), so it's being added to this round's substring.`)
          console.log(`Now the substring is ${substring}`)
        }
      }
    return substring
  }
};

console.log(lengthOfLongestSubstring("abcabcbb"))


// if s[i+1] != s[i]
// substring += s[i+1]
// if s[i+2] != s[i] && s[i+2] != s[i+1]
// substring += s[i+2]

// stringLengthsArray = []
// i = 0
// j = 1+i = 1+0 = 1
// s.length = 8
// k = 0
// substring = s[0] = "a"
