examples
testTemporary
	| visitor |
	visitor := TokenizingVisitor new.
	(self class >> #exampleTemporary) ast acceptVisitor: visitor.
	self assert: visitor tokens equals: #('|' 'x' 'y' 'z' '|') asOrderedCollection