// TIL that Array(x).fill("") will create an array with x number of elements, with each element starting as "". You could (it seems) put anything you want in the (), not just a string. i.e. you could put an integer. E.g. Array(numRows).fill(5) would produce [5, 5, 5, 5]

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