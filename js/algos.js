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

var array_of_phrases = ["long phrase","longest phrase","longer phrase"];

console.log(longestPhrase(array_of_phrases));

var array_of_more_phrases = ["a phrase", "an even longer phrase", "this phrase should win because it's the longest"];

console.log(longestPhrase(array_of_more_phrases));