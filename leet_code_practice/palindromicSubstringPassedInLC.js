// function findLongestPalindromicSubstring(string){
//   let maxLength = 0
//   let longestPalindrome = ""
//   let i = 0
//   while (i<string.length){
//     let center = getCenter(string, i);
//     let currentPalindrome = expandAroundCenter(string, center[0], center[1])
//     length = currentPalindrome[1]+1-currentPalindrome[0]
//     if(length>maxLength){
//       maxLength = length
//       longestPalindrome = string.substring(currentPalindrome[0], currentPalindrome[1]+1)
//     }
//     i = center[1]+1
//   }
//   return longestPalindrome;
// }

// function getCenter(string, i) {
//   let start = i
//   let farRight = i+1
//   while (i < string.length){
//     if (string[start] === string[farRight]){
//       farRight+=1
//     }
//     else {
//       break
//     }
//   }
//   farRight -= 1
//   return [start, farRight]
// }

// function expandAroundCenter(string, left, right){ // string, center[0], center[1]
//   let start = left
//   let farRight = right
//   while(start > 0 && farRight < string.length){
//     if (string[start-1] === string[farRight+1]){
//       start -= 1
//       farRight += 1
//     }
//     else {
//       break
//     }
//   }
//   return [start, farRight]
// }

function getCenter(string, i) {
  let start = i
  let farRight = i+1
  while (i < string.length){
    if (string[start] === string[farRight]){
      farRight+=1
    }
    else {
      break
    }
  }
  farRight -= 1
  return [start, farRight]
}

function expandAroundCenter(string, left, right){ // string, center[0], center[1]
  let start = left
  let farRight = right
  while(start > 0 && farRight < string.length){
    if (string[start-1] === string[farRight+1]){
      start -= 1
      farRight += 1
    }
    else {
      break
    }
  }
  return [start, farRight]
}

var longestPalindrome = function(s) {
  let maxLength = 0
  let maxPalindrome = ""
  let i = 0
  while (i<s.length){
    let center = getCenter(s, i);
    let currentPalindrome = expandAroundCenter(s, center[0], center[1])
    length = currentPalindrome[1]+1-currentPalindrome[0]
    if(length>maxLength){
      maxLength = length
      maxPalindrome = s.substring(currentPalindrome[0], currentPalindrome[1]+1)
    }
    i = center[1]+1
  }
  return maxPalindrome;
}

console.log(getCenter("cccabc", 0))
console.log(expandAroundCenter("acccabc", 1, 3))
console.log(longestPalindrome("acccabc"))