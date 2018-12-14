tests
testMethodNameOneWordOneDigitNoArgs

	| name expectedTokens actualTokens |
	
	name := 'example1'.
	expectedTokens := #(example '<num>').
	actualTokens := nameTokenizer tokenize: name.
	
	self assert: expectedTokens equals: actualTokens.