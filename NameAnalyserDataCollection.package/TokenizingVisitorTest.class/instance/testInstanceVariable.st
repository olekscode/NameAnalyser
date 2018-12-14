examples
testInstanceVariable
	| visitor |
	visitor := TokenizingVisitor new.
	(self class >> #exampleInstanceVariable) ast acceptVisitor: visitor.
	self
		assert: visitor tokens
		equals: #('anInstanceVariable' ':=' '<num>' '.') asOrderedCollection