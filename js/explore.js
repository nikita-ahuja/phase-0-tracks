// PSEUDOCODE
// Function: write a function that reverses a string
// function reverse(string)
// 1. Input: string
// 2. Steps:
// a. replace the first letter with the last letter
// - (think indexes and a variable for the first index going forward and last index going backward)
// b. do this for the next two letters in the word
// - keep repeating until all letters have been switched
// c. when the word is done switching characters, print the word
// 3. Output: a string that has been reversed


function reverse(string) {

  for(var i = 0; i < ((string.length-1)/2); i++) {
    for (var x = (string.length - 1); x > ((string.length-1)/2); x--) {
      var new_string = ""; string[i] + string[x]
      //console.log(string[i])
      //console.log(string[x])
    }
  }
console.log(new_string)
}

reverse("hello");
