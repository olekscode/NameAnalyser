examples
testMessageTwoArgs
	| visitor |
	visitor := TokenizingVisitor new.
	(self class >> #exampleMessageTwoArgs) ast acceptVisitor: visitor.
	self
		assert: visitor tokens
		equals: #('(' 'Array' 'with:' '<num>' 'with:' '<num>' ')' '.') asOrderedCollection