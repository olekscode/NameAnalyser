examples
testBlock
	| visitor |
	visitor := TokenizingVisitor new.
	(self class >> #exampleBlock) ast acceptVisitor: visitor.
	self
		assert: visitor tokens
		equals: #('[' '(' '<num>' '+' '<num>' ')' '.' ']' '.') asOrderedCollection