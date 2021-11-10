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

//============================================================================

// 2. Less Than 100

// Given an array of numbers, write a function that returns a new array that contains all numbers from the original array that are less than 100.

// Input: [99, 101, 88, 4, 2000, 50]
// Output: [99, 88, 4, 50]

/*
solve with both while and each loops

while-
function, params, 
empty array ---> CAMEL CASE
loop
  if statement
    push
  iterate

return
*/

function lessThanHundred(array) {
  let index = 0;
  let newArray = [];

  while (index < array.length) {
    if (array[index] < 100) {
      newArray.push(array[index]);
    }
    index += 1;
  }
  return newArray;
}

console.log(lessThanHundred([99, 101, 88, 4, 2000, 50]));

//============================================================================
