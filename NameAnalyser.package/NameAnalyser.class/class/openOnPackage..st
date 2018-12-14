as yet unclassified
openOnPackage: aPackage

	| model analyser |
	model := NameAnalyserModel new package: aPackage.
	
	analyser := self withModel: model.
	analyser openWithSpec.