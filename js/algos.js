// RELEASE 0:
// A. Write a function that takes an array of words or phrases and returns the longest word or phrase in the array. So if we gave your function the array of ["long phrase","longest phrase","longer phrase"], it would return "longest phrase". This is a logical reasoning challenge, so try to reason through this based on what you already know, rather than Googling the fanciest solution or looking up built-in sorting functions. Note that "some string".length will do what you expect in JS.
// B. Add driver code that tests your function on a few arrays.

//RELEASE 0 PSEUDOCODE:
// Create a function that takes an array as an argument and returns the longest word or phrase in the array
//input: array
//steps:
// 1. navigate to the first item in the array
// 2. measure the length of that item and store it
// 3. repeat this for EACH item in the array
// 4. After EACH item in the array has been measured, compare the values to obtain the largest
// 5. return the longest item in the array
//output: largest item in the array... a single string!!!

function return_longest(array) {
  var longest_item = ""
  for (var i = 0; i <= array.length - 1 ; i++) {
    if ((array[i]).length > longest_item.length) {
      longest_item = array[i];
    }
  }
console.log(longest_item);
}

//console.log(array_lengths);
return_longest(["hello", "hello1", "hello11"]);
return_longest(["1234", "123456", "123"]);
return_longest(["NA", "Nikita Ahuja", "Ahuja"])


//RELEASE 1: Write a function that takes two objects and checks to see if the objects share at least one key-value pair.

//Examples:

// yourFunction({name: "Steven", age: 54}, {name: "Tamir", age: 54}); #  true

// yourFunction({animal: "Dog", legs: 4}, {animal: "Dog", legs: 3}); #  true

// If no pairs match (and keep in mind that the two objects may not even have any of the same keys), the function should return false. To make your life easier, don't worry about whether a property is a string ('age') or an identifier name (age). Those can be considered equivalent.