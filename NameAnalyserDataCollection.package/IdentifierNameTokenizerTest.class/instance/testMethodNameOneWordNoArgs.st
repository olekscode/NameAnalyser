tests
testMethodNameOneWordNoArgs

	| name expectedTokens actualTokens |
	
	name := 'example'.
	expectedTokens := #(example).
	actualTokens := nameTokenizer tokenize: name.
	
	self assert: expectedTokens equals: actualTokens.