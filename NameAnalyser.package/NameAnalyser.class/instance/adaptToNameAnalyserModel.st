as yet unclassified
adaptToNameAnalyserModel
	
	self nameList
		autoDeselect: false;
		whenSelectedItemChanged: [ :selectedMethod |
			nameAnalyserModel selectedMethodIndex: self nameList selectedIndex.
			self displayCurrentMethodName.
			self displaySourceCode.
			self displayProposedNames. ].
		
	self displayMethodNames.
	