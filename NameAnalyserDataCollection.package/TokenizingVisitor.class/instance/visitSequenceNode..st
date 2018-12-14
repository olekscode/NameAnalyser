visiting
visitSequenceNode: aSequence
	aSequence temporaries size > 0
		ifTrue: [ tokens add: '|'.
			aSequence temporaries do: [ :each | each acceptVisitor: self ].
			tokens add: '|' ].
	aSequence statements
		do: [ :each | 
			each acceptVisitor: self.
			tokens add: '.' ]