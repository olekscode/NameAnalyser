as yet unclassified
findTokenLimitsIn: aString tokenizedAs: anArrayOfTokens

	| endOfPrevToken limits |
	
	endOfPrevToken := 1.
	
	^ anArrayOfTokens collect: [ :token |
		((token = '(') or: (token = ')'))
			ifTrue: 0@0
			ifFalse: [
				token = '<num>'
					ifTrue: [
						limits := self
							limitsOfFirstRegexMatch: '-?\d*\.?\d*e?-?\d*'
							in: aString
							startingAt: endOfPrevToken.
						endOfPrevToken := limits y.
						limits ]
					ifFalse: [
						token = '<str>'
							ifTrue: [
								limits := self
									limitsOfFirstRegexMatch: '\''.*\'''
									in: aString
									startingAt: endOfPrevToken.
								endOfPrevToken := limits y.
								limits ]
							ifFalse: [
								limits := self
									limitsOfToken: token
									in: aString
									startingAt: endOfPrevToken.
								endOfPrevToken := limits y.
								limits ] ] ] ].

	