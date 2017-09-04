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

// return_longest(["hello", "hello1", "hello11"]);
// return_longest(["1234", "123456", "123"]);
// return_longest(["NA", "Nikita Ahuja", "Ahuja"])


//RELEASE 1: Write a function that takes two objects and checks to see if the objects share at least one key-value pair.

//Examples:

// yourFunction({name: "Steven", age: 54}, {name: "Tamir", age: 54}); #  true

// yourFunction({animal: "Dog", legs: 4}, {animal: "Dog", legs: 3}); #  true

// If no pairs match (and keep in mind that the two objects may not even have any of the same keys), the function should return false. To make your life easier, don't worry about whether a property is a string ('age') or an identifier name (age). Those can be considered equivalent.


// RELEASE 1 PSEUDOCODE
// Create a function that takes 2 objects as an argument and returns true if the objects have atleast one same key/value pair or false if no pairs match
//input: 2 objects (object1, object2)
//steps:
// 1. iterate through the items in the first object
// 2. iterate through the items in the second object
// 3. compare all object to see if there are any key/value pairs that are the same ...?
//output: true or false


function compare_objects(object1, object2) {

  var object1_keys1 = new Array();
  var object1_values1 = new Array();

  var object2_keys2 = new Array();
  var object2_values2 = new Array();

  for (var keys1 in object1) {
    var object1_keys = object1_keys1.push(keys1);
    var object1_values = object1_values1.push(object1[keys1]);
} //close object 1 for loop

  for (var keys2 in object2) {
    var object2_keys = object2_keys2.push(keys2);
    var object2_value = object2_values2.push(object2[keys2]);
}

  // for (var j in object1_keys)
  //   for (var k in object2_keys)
  //     if j == k
  //       return true;

console.log (object1_keys1);
console.log (object1_values1);
console.log (object2_keys2);
console.log (object2_values2);

} //If i continue this approach I would compare the 2 arrays using conditionals


// function compare_objects(object1, object2) {
//   for (var key1 in object1) {
//     for (var key2 in object2) {
//       if (object1[key1] == object2[key2]) { //if the key/value pair is equal
//           { break ;} //break out of the loop
//           return true; //return true, no need to check further
//       } else if (object1[key1] !== object2[key2]) { //if the key/value pair isnt equal
//         (object1[key1]++ && object2[key2]++);
//         //continue;
//       } else {
//         return false ;
//       } //close the else portion of the if/else statement
//     }
//   //return false; // close the object2 for loop
//   } //close the object1 for loop
// }


(compare_objects({animal: "Dog", legs: 4}, {animal: "Dog", legs: 4}))


//Release 2: Generate Random Test Data

// Write a function that takes an integer for length, and builds and returns an array of strings of the given length. So if we ran your function with an argument of 3, we would get an array of 3 random words back (the words don't have to be actual sensical English words -- "nnnnfph" totally counts). The words should be of randomly varying length, with a minimum of 1 letter and a maximum of 10 letters. (This involves a new trick, generating a random number, that you'll have to look up, but the solution on how to do so is relatively straightforward.)

// Add driver code that does the following 10 times: generates an array, prints the array, feeds the array to your "longest word" function, and prints the result.

 function random_data(integer) {
  var string = ""


 }


