// TIL:
// ++R is a syntax that would take the current value of R and increment it? How is this different than R++? Looks like R++ does not increment it on the spot, whereas ++R does. So if R is currently 0, then ++R means ¿'use one more than the value of R for R, and reassign R that value now' (I think)? 
// The internet says: "++i returns the value of i after it has been incremented. i++ returns the value of i before incrementing. When the ++ comes after it is called the "post-increment" operator. 

// OPTIMIZED
function getCenter(s,c){
  let L = c, R = c;
  console.log("get center start index: " + c);
  while(s[L] === s[++R] && R <= s.length ){
    console.log("R is " + R) // This line will show R incrementing to 1 in the first while loop run, and then 2, and then 3, upon which it will break. I'm kind of confused why s[0] === s[3] runs at all. I guess R has to be incremented to test it, and the incremented value still remains once you get the to console.log line returning "return 0:2".
  }//; // i.e. while the leftmost side of this "center" is the same letter as the current right increment that we're on.... i.e. as we iterate through the while loop, R is going to keep incrementing by 1 and moving further right down the string to test further out cheracters against the leftmost character.
  //wow, is that one line the whole while loop? there's no {} then part of this while loop. So it's just saying increment R while s[R] == s[L]? So I guess we're only using this loop to set up R?
  console.log("R is " + R) // At this line, R = 3. So R is actually incremented one more time in the last run of the while loop, but s[0] = c and s[3] = a, so s[0] != s[3], so that's the last time it runs. On the next line, we have to use the index to the left of the currently logged R. So we need to do R-1, not just R. 
  // instead of console logging R-1 and THEN incrementing R down by 1, couldn't we just increment it down in the console log and then leave it? I updated my code to this... it seems like it's still working.
  console.log("return " + L + ":" + (--R));
  return [L, R];
}

function expandAroundCenterSolution(s) {
  let start = 0, end = 0; // start and end position of current longest palindrome.
  for (let i = 0; i < s.length; i++) { 
      let center = getCenter(s, i); // getCenter method checks all the following characters "starting with the provided position"... checking if they are the same and trying to expand the center of the palindrome. i.e. I think this is like when we figured out "ccc" is it's own center. YES! that's gotta be what it is. 
      // So the whole coding point of running getCenter() seems to be returning values for L and R. So we should use this in our following code...
      // But I guess first we have to expand around that center...?
      // Also, I didn't know you could set a variable equal to a function. I guess it's equal to the result (what's returned in that function), i.e. [L, R] here.
      let bounds = expandAroundCenter(s, center[0], center[1]); // once we have the center, we try to expand around the center... grow the center palindrome to the left and the right checking if the characters are matching. So, if the palindrome can grow around the found center. 
      //OHHHHHH. The getCenter() function returns an array. center[0] is the first element in that array, which is the index of the leftmost character in the current "center." center[1] is the second element of that array, which is the index of the rightmost character in the current "center." So the parameters for expandAroundCenter() are really the string itself, the leftmost index of the current center, and the rightmost index of the current center.
      console.log("The bounds are " + bounds) // The bounds are also an array.
      let L = bounds[0], R = bounds[1];
      if (R - L > end - start) { // Once we have the result of the expandAroundCenter method, we use if statements to verify whether the currently found palindrome is longer than the current max. If the current palindrome is longer, then we replace it (I don't think he's done this yet in his code...). 
      // AHHHH. yes ^ , he has done this in his code. it's these next two lines. he doesn't define the longest palindrome so far as its own variable, he simply redefines the leftmost and rightmost index of the longest found palindrome so far.
          start = L;
          end = R;
      }
      console.log("---");
      i = center[1]; //If the current center is longer than 1 character, then we should move the index the the last character of the current center. (this seems conflicting. is it the the last character of the current center, or the character after?) move to the end of center, i++ will then shift pointer to index right after current center.
      // Then for loop starts over with new i. 
      // center[1] represents the index of the character that is the end of the center that we just found. When we go through this for loop again and rerun getCenter() and expandAroundCenter(), it will be starting with the character after the current center as the next starting i. We'll keep running through i's until  get all the way to the end of the string.
  }
  return s.substring(start, end + 1);
}

function expandAroundCenter(s, left, right) {
  let L = left, R = right;

  while (L >= 0 && R < s.length && s[L] === s[R]) {
      L--;
      R++;
  }
  console.log("expand return " + (L+1) + ":" + (R-1));
  console.log("L is " + L);
  console.log("R is " + R);
  console.log("current return is " + s.substring(L, R));
  // console.log("++L is " + ++L); these lines are prematurely incrementing before returning, so it's returning the wrong thing.
  // console.log("++R is " + ++R);
  return [++L, --R];
}

console.log(expandAroundCenterSolution("cccabc"))