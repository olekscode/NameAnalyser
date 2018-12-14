examples
testBlockWithArgsAndTemp
	| visitor |
	visitor := TokenizingVisitor new.
	(self class >> #exampleBlockWithArgsAndTemp) ast acceptVisitor: visitor.
	self
		assert: visitor tokens
		equals:
			#('[' ':x' ':y' '|' '|' 'a' 'b' '|' 'a' ':=' '(' 'x' '+' '<num>' ')' '.' 'b' ':=' '(' 'y' '-' '<num>' ')' '.' '(' 'a' '*' 'b' ')' '.' ']' '.')
				asOrderedCollection