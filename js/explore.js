// PSEUDOCODE
// initialize a result accumulator string that is empty
// for each letter in initial string (counting down from string length)
// 	- add the last letter of the string to the result string
// 	- access last letter by incrementing down through the indexes with i in for loop
// return result string


function reverse(initialString) {
	var result = "";
	for (var i = initialString.length; i >= 0; i--) {
		result += initialString[i];
	};
	return result;
};

var originalString = "reverse this string!"

var reversedString = reverse(originalString);

if ("a" == "a") {
	console.log(reversedString);
};