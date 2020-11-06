// https://leetcode.com/problems/add-two-numbers/solution/
// You are given two non-empty linked lists representing two non-negative integers. The digits are stored in reverse order, and each of their nodes contains a single digit. Add the two numbers and return the sum as a linked list.

// You may assume the two numbers do not contain any leading zero, except the number 0 itself.

// Example 1:
// Input: l1 = [2,4,3], l2 = [5,6,4]
// Output: [7,0,8]
// Explanation: 342 + 465 = 807.

// Example 2:
// Input: l1 = [0], l2 = [0]
// Output: [0]

// Example 3:
// Input: l1 = [9,9,9,9,9,9,9], l2 = [9,9,9,9]
// Output: [8,9,9,9,0,0,0,1]

var addTwoNumbers = function(l1, l2) {
  let sum1 = 0
  for (let i=0; i < l1.length; i++){
      sum1 += (10**i)*l1[i]
  }     
  let sum2 = 0
  for (let j=0; j < l2.length; j++){
      sum2 += (10**j)*l2[j]
  }
  let doublesum = sum1 + sum2
  stringNumber = doublesum.toString();
  arrayOfDigits = stringNumber.split("");
  let finalArray = arrayOfDigits.reverse()
  return finalArray
};


console.log(addTwoNumbers([2,4,3], [5,6,4]))
console.log(addTwoNumbers([2,4,3], [0]))
console.log(addTwoNumbers([9,9,9,9,9,9,9], [9,9,9,9]))

// This worked! I couldn't actually get it to pass in Leet Code for some reason though... I kept getting this error:

// Line 44 in solution.js
//              throw new TypeError(__serialize__(ret) + " is not valid value for the expected return type ListNode");
//              ^
// TypeError: 5 is not valid value for the expected return type ListNode
//     Line 44: Char 20 in solution.js (Object.<anonymous>)
//     Line 16: Char 8 in runner.js (Object.runner)
//     Line 28: Char 26 in solution.js (Object.<anonymous>)
//     Line 1200: Char 30 in loader.js (Module._compile)
//     Line 1220: Char 10 in loader.js (Object.Module._extensions..js)
//     Line 1049: Char 32 in loader.js (Module.load)
//     Line 937: Char 14 in loader.js (Function.Module._load)
//     at Function.executeUserEntryPoint [as runMain] (internal/modules/run_main.js:71:12)
//     Line 17: Char 47 in run_main_module.js

// I tried commenting out my code and only making it return 5 in the function, and I continued to get this error, which makes me thing its somehting about how I'm returning the result and I must be doing that incorrectly or something...