tests
testMethodNameOneWordTwoDigitsNoArgs

	| name expectedTokens actualTokens |
	
	name := 'example12'.
	expectedTokens := #(example '<num>').
	actualTokens := nameTokenizer tokenize: name.
	
	self assert: expectedTokens equals: actualTokens.