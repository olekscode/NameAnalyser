examples
testMessageOneArg
	| visitor |
	visitor := TokenizingVisitor new.
	(self class >> #exampleMessageOneArg) ast acceptVisitor: visitor.
	self
		assert: visitor tokens
		equals: #('(' 'Array' 'new:' '<num>' ')' '.') asOrderedCollection