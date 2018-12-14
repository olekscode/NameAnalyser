visiting
visitMessageNode: aMessageNode
	| shouldBeInParentheses |
	shouldBeInParentheses := aMessageNode arguments size > 0.
	shouldBeInParentheses
		ifTrue: [ tokens add: '(' ].
	aMessageNode receiver acceptVisitor: self.
	aMessageNode arguments size = 0
		ifTrue: [ tokens add: aMessageNode selector asString ].
	1 to: aMessageNode arguments size do: [ :i | 
		tokens add: (aMessageNode selectorParts at: i) asString.
		(aMessageNode arguments at: i) acceptVisitor: self ].
	shouldBeInParentheses
		ifTrue: [ tokens add: ')' ]