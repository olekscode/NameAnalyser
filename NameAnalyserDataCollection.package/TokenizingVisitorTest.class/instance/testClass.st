examples
testClass
	| visitor |
	visitor := TokenizingVisitor new.
	(self class >> #exampleClass) ast acceptVisitor: visitor.
	self assert: visitor tokens equals: #('Array' '.') asOrderedCollection