parsing
tokenize: aString
	"Splits identifier name such as RTObject123 or example3drawCircle into an array of lowercase tokens: #(rt object <num>) and #(example <num> draw circle)"
	
	| matcher arrayOfTokens |
	matcher := RxMatcher forString: '\:|[0-9]+|[A-Z][a-z]+|[a-z]+|[A-Z]+\>'.
	arrayOfTokens := (matcher matchesIn: aString collect: [ :x | x asLowercase ]) asArray.
	arrayOfTokens := self encodeNumbers: arrayOfTokens.
	^ arrayOfTokens 

	