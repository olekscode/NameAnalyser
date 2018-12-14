visiting
visitLiteralNode: aLiteralNode
	| literal |
	literal := aLiteralNode value.
	tokens add: (self tokenizeLiteral: literal)