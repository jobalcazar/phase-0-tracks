// for each letter in a word, starting at the end , you add it to the an empty
// string,

function reverse(word){
  var new_word="";
  for (var i=word.length; i>=0; i--){
    new_word = new_word + word[i];
  }
  return new_word;
}

//---Driver Code---
