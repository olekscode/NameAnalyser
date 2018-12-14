visiting
visitLiteralArrayNode: aLiteralNode
	| literal |
	literal := aLiteralNode value.
	tokens add: '#('.
	literal do: [ :each | tokens add: (self tokenizeLiteral: each) ].
	tokens add: ')'