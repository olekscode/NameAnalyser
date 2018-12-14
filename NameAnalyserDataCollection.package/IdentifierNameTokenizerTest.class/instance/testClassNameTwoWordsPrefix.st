tests
testClassNameTwoWordsPrefix

	| name expectedTokens actualTokens |
	
	name := 'RTExampleDraw'.
	expectedTokens := #(rt example draw).
	actualTokens := nameTokenizer tokenize: name.
	
	self assert: expectedTokens equals: actualTokens.