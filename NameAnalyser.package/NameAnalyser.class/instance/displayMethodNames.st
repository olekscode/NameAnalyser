as yet unclassified
displayMethodNames
	self nameList
		items: (nameAnalyserModel compiledMethods collect: [ :method | { 0 . method } ]);
		displayBlock: [ :array | { array first asString. array second printString } ];
		setSelectedIndex: nameAnalyserModel selectedMethodIndex
		