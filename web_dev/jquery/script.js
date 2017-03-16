var alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
for (var j = 0; j < 300; j++) {
	for (var i = 0; i < 26; i++) {
		var spanString = "<span>" + alphabet[i] + "</span>"
		$("h1").after(spanString);
	};
};

$("span").on(
	"mouseover",
	function() {
		var ltr = $( this );
		ltr.toggleClass( "cycling" );
		var current = alphabet.indexOf(ltr.text());
		var next;
		if (current == 25) {
			next = 0;
		} else {
			next = current + 1;
		};
		ltr.text(alphabet[next]);
	}
);