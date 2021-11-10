// Write a function that returns the sum of all numbers in a given array.

// NOTE: Do not use any built-in language functions that do this automatically for you.

// Input: [1, 2, 3, 4]
// Output: 10

// Explanation: (1 + 2 + 3 + 4) = 10

/*
loop inside a function
iterate
have sum variable
*/

function arraySum(array) {
  let len = array.length;
  let sum = 0;
  for (var i = 0; i < len; i++) {
    sum = array[i] + sum;
  }
  return sum;
}

console.log(arraySum([1, 2, 3, 4]));

//im literally a genius
