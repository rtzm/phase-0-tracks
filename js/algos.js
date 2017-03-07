// LONGEST PHRASE
// PSEUDOCODE

// Declare variable for index of longest phrase, initialized to 0
// Declare variable for length of longest phrase, initialized to 0
// loop through all phrases in an array, through index of array, for each:
// 	check if phrase length is longer than variable storing length of longest phrase, and if so,
// 		set current index to index of longest phrase
// 		set length of longest phrase to current length
// return phrase at index of longest phrase

var longestPhrase = function(array_of_phrases) {
	var indexOfLongest = 0;
	var lengthOfLongest = 0;
	for (var i = 0; i < array_of_phrases.length; i++) {
		if (array_of_phrases[i].length > lengthOfLongest) {
			indexOfLongest = i;
			lengthOfLongest = array_of_phrases[i].length;
		}
	};
	return array_of_phrases[indexOfLongest];
};

// KEY-VALUE MATCH
// PSEUDOCODE

// Make array of properties in obj1 and array of properties in obj2
// For each property in obj1 property array
// 	- iterate through property names from obj2
// 		- Check if this property from obj1 is found in obj2
// 			- if yes, check if value of obj1.property matches value of obj2,property
// 				- if yes, return true
// 				- else return false
// 			- else return false

var keyValueMatch = function(obj1, obj2) {
	var obj1Properties = Object.keys(obj1);
	var obj2Properties = Object.keys(obj2);
	for (var i = 0; i < obj1Properties.length; i++) {
		for (var j = 0; j < obj2Properties.length; j++) {
			if (obj1Properties[i] == obj2Properties[j]) {
				if (obj1[obj1Properties[i]] == obj2[obj2Properties[j]]) {
					return true;
				};
			};
		};
	};
	return false;
}
 

// RANDOM WORD GENERATOR 
// PSEUDOCODE
 
// Initialize accumulator array to []
// Initialize an array that contains the alphabet
// Loop for the number of times that was passed to this function
// - set accumulator string for this word to ""
// - for a loop from 0 to 9, using i as incrementer
//  - set next letter index variable to a random number between 0 and 25
//  - add letter at this next letter index in the alphabet array to the result string
//  - store chance-to-quit variable as random number between 1 and 10
//  - if chance-to-quit variable is less than or equal to incrementer i, set i to i+10 to end loop early.
// return accumulator array
 
var randomWords = function(numberOfWords) {
	var accArray = [];
	var alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"];
	while ((accArray.length + 1) < numberOfWords) {
		var accWord = "";
		for (var i = 0; i <= 9; i++) {
			var nextLetterIndex = Math.round(Math.random() * 25);
			accWord = accWord.concat(alphabet[nextLetterIndex]);
			var chanceToQuit = Math.floor(Math.random() * 10) + 1;
			if (chanceToQuit <= i) {
				i += 10;
			};
		};
		accArray.push(accWord);
	};
	return accArray;
};


// DRIVER CODE

var array_of_phrases = ["long phrase","longest phrase","longer phrase"];

console.log(longestPhrase(array_of_phrases));

var array_of_more_phrases = ["a phrase", "an even longer phrase", "this phrase should win because it's the longest"];

console.log(longestPhrase(array_of_more_phrases));

var object1 = {
	a: 1,
	b: 2,
	c: 3
};

var object2 = {
	a: 4,
	b: 5,
	c: 6
};

var object3 = {
	a: 1
};

console.log("Should return false: ");
console.log(keyValueMatch(object1, object2));
console.log("should return true: ");
console.log(keyValueMatch(object1, object3));

for (var k = 0; k < 10; k++) {
	console.log(longestPhrase(randomWords(k+4)));
}