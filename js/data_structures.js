var names=["Ed", "Fiona", "Firewood", "Thomas"];
var colors =["Strawberry Red", "Dijon Mustard Yellow", "Puke Green", "Jelly Bean Purple"];

names.push("Trudy");
colors.push("Magenta");

barn={};
for (var i=0; i<names.length; i++){
  barn[names[i]]=colors[i];
}

function car(year, make, model, color){
  this.year=year;
  this.make=make;
  this.model=model;
  this.color=color;
  this.drive= function (){
  console.log( "Rev Rev Vroom Vroom!");
}
}
console.log(barn);
var new_car= new car("2011", "Sedan", "BMW", "Silver" );
console.log(new_car);
console.log(new_car.drive());
var new_car= new car("1957", "Sedan", "Honda", "Tan" );
console.log(new_car);
console.log(new_car.drive());
var new_car= new car("1984", "SUV", "Mercedes", "Black" );
console.log(new_car);
console.log(new_car.drive());
