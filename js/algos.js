// Release 0:
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

// Release 1:
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