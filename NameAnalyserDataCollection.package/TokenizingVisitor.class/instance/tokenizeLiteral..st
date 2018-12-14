visiting
tokenizeLiteral: aLiteral
	aLiteral isNumber
		ifTrue: [ ^ '<num>' ].
	aLiteral isString
		ifTrue: [ ^ '<str>' ].
	^ aLiteral asString