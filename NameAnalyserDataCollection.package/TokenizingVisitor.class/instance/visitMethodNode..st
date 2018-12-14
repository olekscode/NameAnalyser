visiting
visitMethodNode: aMethodNode
	name := aMethodNode selector asString.
	aMethodNode children
		do: [ :each | 
			each class = RBArgumentNode
				ifTrue: [ arguments add: each name asString ].
			each class = RBSequenceNode
				ifTrue: [ each acceptVisitor: self ] ]