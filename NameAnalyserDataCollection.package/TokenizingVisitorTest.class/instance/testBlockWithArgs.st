examples
testBlockWithArgs
	| visitor |
	visitor := TokenizingVisitor new.
	(self class >> #exampleBlockWithArgs) ast acceptVisitor: visitor.
	self
		assert: visitor tokens
		equals: #('[' ':x' '|' '(' 'x' '+' '<num>' ')' '.' ']' '.') asOrderedCollection