function isPalindrome(x){
  stringVersion = x.toString()
  let i = 0
  let j = stringVersion.length-1
  while (i<=j){
    if(stringVersion[j]===stringVersion[i]){
      i++
      j--
    }
    else {
      return false
    }
  }
  return true
}

console.log(isPalindrome(123431))