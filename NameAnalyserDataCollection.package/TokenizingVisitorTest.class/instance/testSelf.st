examples
testSelf
	| visitor |
	visitor := TokenizingVisitor new.
	(self class >> #exampleSelf) ast acceptVisitor: visitor.
	self assert: visitor tokens equals: #('self' '.') asOrderedCollection