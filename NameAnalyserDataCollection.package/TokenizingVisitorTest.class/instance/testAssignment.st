examples
testAssignment
	| visitor |
	visitor := TokenizingVisitor new.
	(self class >> #exampleAssignment) ast acceptVisitor: visitor.
	self assert: visitor name equals: 'exampleAssignment'.
	self
		assert: visitor tokens
		equals: #('|' 'x' '|' 'x' ':=' '<num>' '.') asOrderedCollection.
	self assert: visitor arguments equals: #() asOrderedCollection