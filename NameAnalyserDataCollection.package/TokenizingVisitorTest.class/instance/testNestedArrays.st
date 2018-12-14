examples
testNestedArrays
	| visitor |
	visitor := TokenizingVisitor new.
	(self class >> #exampleNestedArrays) ast acceptVisitor: visitor.
	self
		assert: visitor tokens
		equals:
			#('{' '{' '<num>' '.' '<str>' '}' '.' 'true' '.' '{' 'false' '}' '}' '.')
				asOrderedCollection