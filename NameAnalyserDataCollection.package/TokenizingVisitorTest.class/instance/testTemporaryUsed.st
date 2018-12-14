examples
testTemporaryUsed
	| visitor |
	visitor := TokenizingVisitor new.
	(self class >> #exampleTemporaryUsed) ast acceptVisitor: visitor.
	self
		assert: visitor tokens
		equals:
			#('|' 'x' 'y' '|' 'x' ':=' '<num>' '.' 'y' ':=' '<num>' '.' '(' 'x' '+' 'y' ')' '.')
				asOrderedCollection