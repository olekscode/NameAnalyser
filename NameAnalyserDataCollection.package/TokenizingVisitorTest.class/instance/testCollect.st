examples
testCollect
	| visitor |
	visitor := TokenizingVisitor new.
	(self class >> #exampleCollect) ast acceptVisitor: visitor.
	self
		assert: visitor tokens
		equals: #('(' 'self' 'collect:' '[' ':x' '|' 'x' '.' ']' ')' '.') asOrderedCollection