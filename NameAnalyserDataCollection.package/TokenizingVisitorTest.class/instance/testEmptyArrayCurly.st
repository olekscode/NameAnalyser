examples
testEmptyArrayCurly
	| visitor |
	visitor := TokenizingVisitor new.
	(self class >> #exampleEmptyArrayCurly) ast acceptVisitor: visitor.
	self assert: visitor name equals: 'exampleEmptyArrayCurly'.
	self assert: visitor tokens equals: #('{' '}' '.') asOrderedCollection.
	self assert: visitor arguments equals: #() asOrderedCollection