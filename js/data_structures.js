colors = ['red','blue','orange','yellow'];
names = ['teddy','whiskers','horsey','ed'];
console.log(colors.push('pink'));
console.log(names.push('jameson'));
console.log(names);
console.log(colors);

var horses = {};

for (var i = colors.length - 1; i >= 0; i--) {
	horses[names[i]] = colors[i];
};

console.log(horses);

function Car(make, passengers, year) {
	console.log("Making new car...");
	this.make = make; 
	this.passengers = passengers;
	this.year = year;

	this.drive = function() { console.log("Driving the " + this.make + "...")};
};

var audi = new Car("audi", "4", "2003");
var truck = new Car("ford", "2", "2007");
var sedan = new Car("toyota", 4, 1998);
audi.drive();
