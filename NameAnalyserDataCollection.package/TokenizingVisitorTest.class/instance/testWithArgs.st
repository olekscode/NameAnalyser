examples
testWithArgs
	| visitor |
	visitor := TokenizingVisitor new.
	(self class >> #exampleWithArgs:) ast acceptVisitor: visitor.
	self assert: visitor name equals: 'exampleWithArgs:'.
	self assert: visitor tokens equals: #('<num>' '.') asOrderedCollection.
	self assert: visitor arguments equals: #('anArg') asOrderedCollection