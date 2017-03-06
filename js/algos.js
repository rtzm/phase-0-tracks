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
