examples
testMessageNoArgs
	| visitor |
	visitor := TokenizingVisitor new.
	(self class >> #exampleMessageNoArgs) ast acceptVisitor: visitor.
	self assert: visitor tokens equals: #('<num>' 'asInteger' '.') asOrderedCollection