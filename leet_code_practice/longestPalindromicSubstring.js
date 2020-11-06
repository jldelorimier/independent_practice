// Given a string s, return the longest palindromic substring in s.

// Brute force method:

// 1) make function that returns all substrings in a string. 
// 2) make a "helper function" that tests whether or not a string is a palendrome.
// 3) run the helper function inside the original function that pulls out all substrings.

// 1) ALL SUBSTRINGS FUNCTION:

// TIL that .substring(i, j) will return the substring in a string between indices i and j (inclusive for i, but not inclusive for j. i.e. it slices the string immediately before i AND immediately before j).
// and that the i<string.length parameter HAS to come before the increment (i++) part in the parameters in a for loop
// and that if you don't initialize your indexes (i, j, etc) in a for loop with 'let' in javascript, then it won't increment them after you set them; they will just stay at the first value you assigned them (i.e. i = 0).

function isPalindrome(substring){
  // define a variable to represent the index of the first and last letter of a string. 
  i = 0
  j = substring.length-1
  let isPalindrome = true
  while (i < substring.length/2-.5){
    if (substring[i] !== substring[j]){ // The solution online uses if (!(substring.charAt(i)===substring.charAt(j))){} ... Is this better than what I have??
      isPalindrome = false
      break;
    }
    i++
    j--
  }
  return isPalindrome
}

// console.log(isPalindrome("abca"))

function allSubstrings(string){
  maxPalindrome = "";
  for (let i = 0; i < string.length; i++){
    for (let j = i+1; j<= string.length; j++){
      substring = string.substring(i, j)
      console.log(substring);
      if (isPalindrome(substring)){
        console.log(substring + " is a palindrome.")
        if (substring.length>maxPalindrome.length){
          maxPalindrome = substring;
        }
      }
    }
  }
  return maxPalindrome;
}

console.log(allSubstrings("cccabc"))

// Omg I solved it!!! At first, my loops were not incrementing in my for loops. So it was running isPalindrome() on substrings, but it just kept running the function on the same substring ("c") over and over. It wasn't until I added in the "let"s before I initiated i & j (i = 0 >> let i = 0) that it incremented! I thought the let was optional, but I guess you NEED the let to indicate that i is only STARTING at that value for the for loop, but that it is expected to increment (i++) after that. 