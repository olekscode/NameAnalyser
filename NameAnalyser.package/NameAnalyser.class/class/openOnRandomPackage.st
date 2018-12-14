as yet unclassified
openOnRandomPackage

	| package |
	package := Smalltalk image packages atRandom.
	self openOnPackage: package.