examples
testNumber
	| visitor |
	visitor := TokenizingVisitor new.
	(self class >> #exampleNumber) ast acceptVisitor: visitor.
	self assert: visitor tokens equals: #('<num>' '.') asOrderedCollection