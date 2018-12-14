tests
testMethodNameTwoWordsNoArgs

	| name expectedTokens actualTokens |
	
	name := 'exampleDraw'.
	expectedTokens := #(example draw).
	actualTokens := nameTokenizer tokenize: name.
	
	self assert: expectedTokens equals: actualTokens.