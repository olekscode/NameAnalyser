tests
testClassNameTwoWordsPrefixDigitsLowercase

	| name expectedTokens actualTokens |
	
	name := 'RTExampleDraw123hello'.
	expectedTokens := #(rt example draw '<num>' hello).
	actualTokens := nameTokenizer tokenize: name.
	
	self assert: expectedTokens equals: actualTokens.