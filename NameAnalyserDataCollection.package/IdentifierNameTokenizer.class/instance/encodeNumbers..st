as yet unclassified
encodeNumbers: anArrayOfTokens

	^ anArrayOfTokens collect: [ :token |
		(token matchesRegex: '\d+')
			ifTrue: '<num>'
			ifFalse: token ].