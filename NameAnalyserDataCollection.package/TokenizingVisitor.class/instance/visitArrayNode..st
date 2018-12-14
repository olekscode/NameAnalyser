visiting
visitArrayNode: aLiteralNode
	tokens add: '{'.
	1 to: aLiteralNode children size - 1 do: [ :i | 
		(aLiteralNode children at: i) acceptVisitor: self.
		tokens add: '.' ].
	aLiteralNode children isEmpty
		ifFalse: [ aLiteralNode children last acceptVisitor: self ].
	tokens add: '}'