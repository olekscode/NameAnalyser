tests
testMethodNameTwoWordsTwoArgs

	| name expectedTokens actualTokens |
	
	name := 'example:draw:'.
	expectedTokens := #(example : draw :).
	actualTokens := nameTokenizer tokenize: name.
	
	self assert: expectedTokens equals: actualTokens.