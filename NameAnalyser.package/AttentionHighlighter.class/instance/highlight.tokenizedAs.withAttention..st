as yet unclassified
highlight: aText tokenizedAs: anArrayOfTokens withAttention: anArrayOfNumbers

	| str limits |
	
	str := aText asString.
	Transcript open; clear.
	limits := self findTokenLimitsIn: str tokenizedAs: anArrayOfTokens.
	
	limits doWithIndex: [ :limit :i |
		((limit x = 0) or: (limit y > str size)) ifFalse: [
			aText
				addAttribute: (TextColor color: (self attentionAsColor: (anArrayOfNumbers at: i)))
				from: limit x 
				to: limit y ] ].