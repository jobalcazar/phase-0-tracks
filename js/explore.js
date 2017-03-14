// for each letter in a word, starting at the end , you add it to the an empty
// string,

function reverse(word){
  var new_word="";
  for (var i=word.length-1; i>=0; i--){
    new_word = new_word + word[i];
  }
  return new_word;
}

//---Driver Code---
console.log(reverse("Hello"));
var final_word = reverse("Volcanoe")
if (1==1){
  console.log(final_word)
}
