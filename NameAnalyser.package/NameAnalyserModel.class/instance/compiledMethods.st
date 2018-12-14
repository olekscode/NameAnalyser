accessing
compiledMethods
	^ (package classes
		flatCollect: [ :each | each methods ])
		asArray.