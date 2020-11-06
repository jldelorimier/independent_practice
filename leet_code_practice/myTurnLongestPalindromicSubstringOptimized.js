function findLongestPalindromicSubstring(string){
  let maxLength = 0
  let longestPalindrome = ""
  let i = 0
  while (i<string.length){
    let center = getCenter(string, i);
    let currentPalindrome = expandAroundCenter(string, center[0], center[1])
    length = currentPalindrome[1]+1-currentPalindrome[0]
    if(length>maxLength){
      maxLength = length
      longestPalindrome = string.substring(currentPalindrome[0], currentPalindrome[1]+1)
    }
    i = center[1]+1
  }
  return longestPalindrome;
}

function getCenter(string, i) {
  let start = i
  let end = i+1
  while (i < string.length){
    if (string[start] === string[end]){
      end+=1
    }
    else {
      break
    }
  }
  end -= 1
  return [start, end]
}

function expandAroundCenter(string, left, right){ // string, center[0], center[1]
  let start = left
  let end = right
  while(start > 0 && end < string.length){
    if (string[start-1] === string[end+1]){
      start -= 1
      end += 1
    }
    else {
      break
    }
  }
  return [start, end]
}

console.log(getCenter("cccabc", 0))
console.log(expandAroundCenter("acccabc", 1, 3))
console.log(findLongestPalindromicSubstring("acccabc"))