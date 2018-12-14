examples
testMessageThreeArgs
	| visitor |
	visitor := TokenizingVisitor new.
	(self class >> #exampleMessageThreeArgs) ast acceptVisitor: visitor.
	self
		assert: visitor tokens
		equals: #('(' 'Array' 'with:' '<num>' 'with:' '<num>' 'with:' '<num>' ')' '.') asOrderedCollection