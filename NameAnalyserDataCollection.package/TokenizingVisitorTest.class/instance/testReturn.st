examples
testReturn
	| visitor |
	visitor := TokenizingVisitor new.
	(self class >> #exampleReturn) ast acceptVisitor: visitor.
	self assert: visitor tokens equals: #('^' '<num>' '.') asOrderedCollection