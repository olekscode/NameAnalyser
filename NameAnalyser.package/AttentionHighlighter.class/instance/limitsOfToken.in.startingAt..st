as yet unclassified
limitsOfToken: aToken in: aString startingAt: aNumber

	| start end |
	start := aString asLowercase findString: aToken startingAt: aNumber.
	end := start + aToken size.
	
	Transcript show: aToken, ' ', (start@end) asString; cr.
	start = 0 ifTrue: [ 
		Transcript show: { 'Token' . aToken }; cr.
		Transcript show: { 'String' . aString copyFrom: aNumber to: aString size }; cr ].
	
	^ start @ end