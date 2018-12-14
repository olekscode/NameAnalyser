visiting
visitReturnNode: aReturnNode
	tokens add: '^'.
	aReturnNode children do: [ :each | each acceptVisitor: self ]