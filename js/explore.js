// PSEUDOCODE
// Function: write a function that reverses a string
// function reverse(string)
// 1. Input: string
// 2. Steps: see below
// a. start with a blank string to append letters
// -start at the final index of the initial string (think of where to initialize counter)
// - navigate to the letter at the final index
// - add it to the new string (+=)
// -keep repeating this method FOR EACH LETTER (i--) until you have reached the very first letter (index 0) of the original string
// c. when the word is done adding all the letters to the new string, print the new string
// 3. Output: a string that has been reversed


function reverse(string) {
  var new_string = ""
  for(var i = string.length-1; i >= 0; i--) {
      new_string += string[i];
  }
return(new_string);
}

reversed_day = reverse("wonderful day");

if (1 <= 3) {
  console.log(reversed_day);
}
