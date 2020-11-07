// TIL that you can use .reverse() on a string, BUT, it is REALLY only for arrays, so if you want to use it you have to split it into an array, reverse it, and then join it back. So you're using three methods at once: .split("").reverse().join("")
// And also if you need to use a negative (at least in a >< situation, then you need to put the integer/expression (¿expression only?) in parentheses before the integer. E.g. I had to write: answer < -(2**31); without parentheses answer < -2**31 did not work.)

function reverseInteger(x){
  if (x >= 0){ 
  stringInput = x.toString()
  console.log(stringInput)
  reversedString = stringInput.split("").reverse().join("")
  reversedInteger = parseInt(reversedString)
  answer = reversedInteger
  }
  else {
    positiveVersion = -x
    stringInput = positiveVersion.toString()
    console.log(stringInput)
    reversedString = stringInput.split("").reverse().join("")
    reversedInteger = parseInt(reversedString)
    answer = -reversedString
  }
  if (answer > 2**31 - 1 || answer < -(2**31)){
    return 0
  }
  else {
    return answer
  }
}

console.log(reverseInteger(-250))
console.log(reverseInteger(1534236469))
console.log(reverseInteger(-2147483648))

// function reverseString(s){
//   return s.split("").reverse().join("");
// }
// console.log(reverseString("Hello"));//"olleH"
