function zigZagStringConverter(s, numRows){
  // Don't forget to add the edge case!
  if (numRows<=1){
    return s
  }
  let interval = 2*(numRows-1)
  let remainder = 0
  let result = Array(numRows).fill("")
  for (i=0; i<s.length; i++){
    remainder = i%interval
    if(remainder<numRows){
      result[remainder]+=s[i]
    }
    else { // else if the remainder >= numRows
      result[interval-remainder]+=s[i]
    }
  }
  answer = result.join("")
  return answer
}

console.log(zigZagStringConverter("PAYPALISHIRING", 3))
console.log(zigZagStringConverter("PAYPALISHIRING", 1))