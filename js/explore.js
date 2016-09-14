// Write function that takes string as a parameter and reverses the string.

// Take a word
// Break string (word) down into array of characters (letters)
// Create a variable (container) for reversed string
// Loop through the array starting from the end, and add each letter to the new container
// Return the reversed word

function reverse(string){
  var letters = string.split('')
  var reversed = [];
  for(var i = letters.length; i >= 0; i--){
    reversed.push(letters[i]);
  }
  console.log(reversed.join(''));
}

reverse("hello");