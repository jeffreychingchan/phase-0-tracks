var horses = ["Lotto", "Mindy", "Jose", "Bob"]
var colors = ["red", "blue", "green", "orange"]

horses.push("Jeffrey")
colors.push("pink")

var horses = ["Lotto", "Mindy", "Jose", "Bob"];
var colors = ["red", "blue", "green", "orange"];

horses.push("Jeffrey");
colors.push("pink");

var horses_colors = {};

for (var i = 0; i < colors.length; i++ ){
	horses_colors[horses[i]] = colors[i]; 
	
	console.log(horses_colors); 
	
}


function Car(color, model, mpg) { 
    
    console.log("Our new car:", this);
    
    
    this.color = color;
    this.model = model;
    this.mpg = mpg;
    
    
    this.vroom = function() { console.log("VROOM"); };
    
    console.log("CAR INITIALIZATION COMPLETE");
}

var aCar = new Car("red", "Civic", 25);
var badCar = new Car("black", "Hummer", 5);
var sfCar = new Car("grey", "Prius", 55);

console.log(aCar, badCar, sfCar);