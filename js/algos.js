// Release 0 - Find the longest phrase:
// Take an array of words or phrases
//   set a variable that longest word will be stored in
//   loop through the array
//   IF the current word is longer than the longest word, update the longest word to be the current word.
//   ELSE go to the next word
// return the longest word or phrase in the array

function longestWord(array){
  var longest = '';
  for(var i = 0; i < array.length; i++){
    if(array[i].length > longest.length){
      longest = array[i];
    }
  }
  return longest;
}

// Release 1 - Find a Key-Value Match:
// Compare 2 Objects
// Check to see if objects share at leaset one key-value pair.
// Create match variable with default value of false
// Iterate through first object,
// Within that loop, iterate through other object to compare elements
// IF there is a match, change value of match to true

function compareObjects(obj1, obj2){
  var match = false;
  for(var x in obj1){
    for(var y in obj2){
      // check to see if keys and values match
      if (x == y && obj1[x] == obj2[y]){
        // console.log(x, y, obj1[x], obj2[y]);
        // ^^ for testing
        match = true;
      }
    }
  }
  return match;
}

// Release 2 -- Generate Random Test Data:
// Take in an integer
// Build and return an array the length of the integer, with strings.
// Strings should be 1 - 10 letters in length
//     Need to be able to:
//     Build a random string

// To output a random number 1 - 10:
// var number = Math.floor(Math.random() * 11);
// console.log(number);

function makeString(){
  var string = '';
  var choices = "abcdefghijklmnopqrstuvwxyz";
  // generates a random number to determine string length:
  var stringLength = Math.floor(Math.random() * 11);
  for(var i = 0; i <= stringLength; i++){
    // for the length of the random number, pick a random letter from the alphabet, and add it to the string.
    string += choices.charAt(Math.floor(Math.random() * choices.length));
  }
  return string;
}

function generateStringArray(int){
  var stringArray = [];
  // for the length of the entered integer, generate random strings, and add them to the array.
  for(var i = 0; i < int; i++){
    stringArray.push(makeString());
  }
  return stringArray;
}


// DRIVER CODE:
// test release 0:
var array1 = ["hello", "esophagus", "okay", "mississippi", "goodbye"];
var array2 = ["a", "abc", "ab", "abcdefg", "abcde"];

console.log(longestWord(array1));
console.log(longestWord(array2));

// test release 1:
var object1 = {name: "Steven", age: 55, hair: "brown"};
var object2 = {name: "Paul", hair: "brown", age: 56};

console.log(compareObjects(object1, object2));

// test just the function to generate a random string:
console.log(makeString());

// test the full generate String Array function:
console.log(generateStringArray(10));

// feed result of string array to longest word function:
var randomArray = generateStringArray(10);

// Printing just the random array for testing:
console.log(randomArray);

// Prints the result of longest word with the randomArray as input.
console.log(longestWord(randomArray));
