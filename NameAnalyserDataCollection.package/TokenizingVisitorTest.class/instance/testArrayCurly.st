examples
testArrayCurly
	| visitor |
	visitor := TokenizingVisitor new.
	(self class >> #exampleArrayCurly) ast acceptVisitor: visitor.
	self assert: visitor name equals: 'exampleArrayCurly'.
	self
		assert: visitor tokens
		equals: #('{' '<num>' '.' '<str>' '.' 'true' '.' 'nil' '}' '.') asOrderedCollection.
	self assert: visitor arguments equals: #() asOrderedCollection