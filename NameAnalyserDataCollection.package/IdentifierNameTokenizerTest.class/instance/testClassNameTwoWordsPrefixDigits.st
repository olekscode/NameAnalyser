tests
testClassNameTwoWordsPrefixDigits

	| name expectedTokens actualTokens |
	
	name := 'RTExampleDraw123'.
	expectedTokens := #(rt example draw '<num>').
	actualTokens := nameTokenizer tokenize: name.
	
	self assert: expectedTokens equals: actualTokens.