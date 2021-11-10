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

//WHILE LOOP:

// function lessThanHundred(array) {
//   let index = 0;
//   let newArray = [];

//   while (index < array.length) {
//     if (array[index] < 100) {
//       newArray.push(array[index]);
//     }
//     index += 1;
//   }
//   return newArray;
// }

// console.log(lessThanHundred([99, 101, 88, 4, 2000, 50]));


//============================================================================


//EACH LOOP:

function lessThanHundred(array) {
  let newArray = [];

  array.forEach(function (element) {
    if (element < 100) {
      newArray.push(element);
    }
  });
  return newArray;
}

console.log(lessThanHundred([99, 101, 88, 4, 2000, 50]));


