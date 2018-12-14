tests
testClassNameOneWord

	| name expectedTokens actualTokens |
	
	name := 'Example'.
	expectedTokens := #(example).
	actualTokens := nameTokenizer tokenize: name.
	
	self assert: expectedTokens equals: actualTokens.