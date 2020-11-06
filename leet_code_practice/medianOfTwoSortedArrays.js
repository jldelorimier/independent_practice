var findMedianSortedArrays = function(nums1, nums2) {
    let fullArray = nums1.concat(nums2);
    let sortedArray = fullArray.sort(function(a, b){return a-b});
    console.log(sortedArray)
    if (sortedArray.length % 2 == 0){
      let firstMiddle = sortedArray[sortedArray.length/2-1]
      let secondMiddle = sortedArray[sortedArray.length/2]
      return (firstMiddle+secondMiddle)/2
    }
    else (sortedArray.length % 2 ==1)
      console.log(`The middle of the array is index ${(sortedArray.length/2) - 0.5}`)
      console.log(`The middle of the array is value ${sortedArray[(sortedArray.length/2) - 0.5]}`)
      return sortedArray[(sortedArray.length/2) - 0.5]
};

// console.log(findMedianSortedArrays([1,2], [4, 3]))
// console.log(findMedianSortedArrays([1,3], [2]))
// console.log(findMedianSortedArrays([0, 0], [0, 0]))
// console.log(findMedianSortedArrays([], [1]))
// console.log(findMedianSortedArrays([2], []))
console.log(findMedianSortedArrays([3], [-2, -1]))

// I tried using the .sort() method to sort my array first, but that won't work except with single digit positive numbers, because the sort() method recongnizes them as strings. Therefore, it will say 25>100 bc 2>1 and -1<-2 because 1<2
// Some things online say I can fix this by using a "compare function" instead: https://www.w3schools.com/jsref/jsref_sort.asp
// So this is saying I just have to put "function(a, b){return a-b}" inside of the .sort() i.e. .sort(function(a, b){return a-b})
// This works!!!! Why is it working? It looks like it's working bc... I guess because for example if it takes .sort(-2, -1), it does the compare function(-2-(-1)) and returns -1, a negative value. ¿I guess? because it knows the returned value was negative, it knows that a is less than b, so it puts a first in the sort instead of using the standard alphanumeric string sort. 

// *I think this function is built in. i.e. it's just a more special version of the pre-built sort method.

// W3 Schools on the compareFunction:
// Optional. A function that defines an alternative sort order. The function should return a negative, zero, or positive value, depending on the arguments, like:
// function(a, b){return a-b}
// When the sort() method compares two values, it sends the values to the compare function, and sorts the values according to the returned (negative, zero, positive) value.

// Example:

// When comparing 40 and 100, the sort() method calls the compare function(40,100).

// The function calculates 40-100, and returns -60 (a negative value).

// The sort function will sort 40 as a value lower than 100.