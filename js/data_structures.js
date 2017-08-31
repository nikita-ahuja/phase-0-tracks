var colors = ["blue", "yellow", "red", "green"]
var names = ["Ed", "Jimmy", "Buster", "Kenny"]

colors.push("orange")
names.push("Albert")

// console.log(colors)
// // console.log(names)


var horse = {};

for(var y = 0; y < colors.length; y++){
    for(var i = 0; i < names.length; i++){
        horse[names[i]] = colors[i];
    }
}

console.log(horse)


function Car(make, model, color){

  console.log("Our new car:", this);
  this.make = make;
  this.model = model;
  this.color = color;

  this.speed = function() {
    console.log("Vroom! Vroom!"); };

  console.log("Car Initialization Complete.");

}

var toyota = new Car("Toyota", "Camry", "Red");
var bmw = new Car("BMW", "328i", "Silver");
var jeep = new Car("Jeep", "Wrangler", "Green");

console.log(toyota)
toyota.speed();
