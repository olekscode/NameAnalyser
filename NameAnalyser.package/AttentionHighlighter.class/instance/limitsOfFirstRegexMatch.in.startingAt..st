as yet unclassified
limitsOfFirstRegexMatch: aRegexOrString in: aString startingAt: aNumber

	| re firstMatch |
	re := aRegexOrString asRegex.
	firstMatch := (re matchesIn: (aString copyFrom: aNumber to: aString size)) first.
	^ self limitsOfToken: firstMatch in: aString startingAt: aNumber.