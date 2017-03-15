//given an array of words, find the length of each word. Start with two
//variables, a index, a counter and a temporary placeholder. These variables will keep
//count of what word you look at. Set both variables to 0 and as you go through
//each element in the array and look at their lenght, store their length in the
//temporary placeholder variable. if the temporary placeholder is greater than
// the counter, then the make counter equal to the value of the temporary placeholder
// and save the index value by setting it equal to index. Do this for the entire
//lenght of the array and then return the value element at the index with greatest
//word length

function longest_phrase(array){
  var index =0;
  var counter =0;
  var temp =0;
  for (var i =0; i<array.length;i++){
    temp=array[i].length;
    if (temp>counter){
      counter=temp;
      index=i;
    }
  }
  return array[index];
}
// for each object, you will compare the name key and the age value with one
//another. if either of those are true then return true, otherwise return false.
function share(object1,object2){
  if (object1.name == object2.name){
    return true;
  }
  else if (object1.age==object2.age) {
    return true;
  }
  else{
    return false;
  }
}
//given a length parameter, you will add a randomly constructed word of length
//parameter length.  using random generator, I will shift the random number by
//10 so that it will give me a random length. After word I will construct
// a random number from 1 to 27 that will access any letter of the alphabet
// and add to an existing empty string to make a word of random letters of
//random length.
function array_generate(length){
  var word_array=[];
  var alpha= "abcdefghijklmnopqrstuvwxyz"
  for (var i=0; i<length; i++){
    var word_length= Math.floor((Math.random() * 10) + 1);
    new_word="";
    for (var j=0; j<word_length;j++){
      var letter= Math.floor((Math.random() * 26) + 1)
      new_word=new_word+alpha.charAt(letter);
    }
    word_array.push(new_word);
  }
  return word_array;
}

console.log(longest_phrase(["long phrase","longest phrase","longer phrase"]));
console.log(share({name: "Steven", age: 54},{name: "Tamir", age: 54}));
console.log(share({name: "Jose", age: 23},{name: "Tamir", age: 24}));

for (var k=0; k<10;k++){
  var lol=array_generate(19);
  console.log(lol);
  console.log(longest_phrase(lol));
}
