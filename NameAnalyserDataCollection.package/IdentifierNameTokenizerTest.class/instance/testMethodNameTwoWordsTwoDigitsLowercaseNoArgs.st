tests
testMethodNameTwoWordsTwoDigitsLowercaseNoArgs

	| name expectedTokens actualTokens |
	
	name := 'exampleDraw123hello'.
	expectedTokens := #(example draw '<num>' hello).
	actualTokens := nameTokenizer tokenize: name.
	
	self assert: expectedTokens equals: actualTokens.