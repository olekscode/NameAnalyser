examples
testSuper
	| visitor |
	visitor := TokenizingVisitor new.
	(self class >> #exampleSuper) ast acceptVisitor: visitor.
	self assert: visitor tokens equals: #('super' '.') asOrderedCollection