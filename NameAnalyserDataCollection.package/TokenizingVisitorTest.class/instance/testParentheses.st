examples
testParentheses
	| visitor |
	visitor := TokenizingVisitor new.
	(self class >> #exampleParentheses) ast acceptVisitor: visitor.
	self assert: visitor name equals: 'exampleParentheses'.
	self
		assert: visitor tokens
		equals: #('(' '<num>' '*' '(' '<num>' '+' '<num>' ')' ')' '.') asOrderedCollection.
	self assert: visitor arguments equals: #() asOrderedCollection