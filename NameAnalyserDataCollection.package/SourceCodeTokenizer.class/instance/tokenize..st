parsing
tokenize: aMethod

	| visitor nameTokenizer |
	visitor := TokenizingVisitor new.
	aMethod ast acceptVisitor: visitor.
	
	nameTokenizer := IdentifierNameTokenizer new.
	
	^ visitor tokens flatCollect: [ :token |
		(token matchesRegex: '(\w|\:)+')
			ifTrue: (nameTokenizer tokenize: token)
			ifFalse: { token } ].