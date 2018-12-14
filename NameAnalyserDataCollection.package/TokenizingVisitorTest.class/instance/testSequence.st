examples
testSequence
	| visitor |
	visitor := TokenizingVisitor new.
	(self class >> #exampleSequence) ast acceptVisitor: visitor.
	self
		assert: visitor tokens
		equals: #('<num>' '.' '#(' '<num>' '<num>' 'true' ')' '.') asOrderedCollection