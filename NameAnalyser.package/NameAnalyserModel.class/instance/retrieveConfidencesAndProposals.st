as yet unclassified
retrieveConfidencesAndProposals

	| methods rand |
	methods := self compiledMethods.
	rand := Random new.
	
	confidences := rand next: methods size.
	
	proposals := methods collect: [ :method |
		(1 to: (rand nextInt: 20)) collect: [ :i |
			{ rand next . methods atRandom selector  } ] ].
	
	attentions := proposals collect: [ :proposedNames |
		proposedNames collect: [ :name |
			(1 to: 100) collect: [ :x | rand next ] ] ].