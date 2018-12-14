examples
testMessageOperator
	| visitor |
	visitor := TokenizingVisitor new.
	(self class >> #exampleMessageOperator) ast acceptVisitor: visitor.
	self
		assert: visitor tokens
		equals: #('(' '<num>' '+' '<num>' ')' '.') asOrderedCollection