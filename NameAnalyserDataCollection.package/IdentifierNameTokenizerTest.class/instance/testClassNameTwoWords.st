tests
testClassNameTwoWords

	| name expectedTokens actualTokens |
	
	name := 'ExampleDraw'.
	expectedTokens := #(example draw).
	actualTokens := nameTokenizer tokenize: name.
	
	self assert: expectedTokens equals: actualTokens.