as yet unclassified
displayProposedNames
	self proposedNamesList
		items: nameAnalyserModel currentMethodProposedNames;
		displayBlock: [ :array | { array first asString copyFrom: 1 to: 4 . array second asString } ];
		setSelectedIndex: nameAnalyserModel selectedProposedNameIndex
		