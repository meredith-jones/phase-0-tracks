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