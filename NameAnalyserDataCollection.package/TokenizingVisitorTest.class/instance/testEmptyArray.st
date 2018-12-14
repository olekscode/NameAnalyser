examples
testEmptyArray
	| visitor |
	visitor := TokenizingVisitor new.
	(self class >> #exampleEmptyArray) ast acceptVisitor: visitor.
	self assert: visitor name equals: 'exampleEmptyArray'.
	self assert: visitor tokens equals: #('#(' ')' '.') asOrderedCollection.
	self assert: visitor arguments equals: #() asOrderedCollection