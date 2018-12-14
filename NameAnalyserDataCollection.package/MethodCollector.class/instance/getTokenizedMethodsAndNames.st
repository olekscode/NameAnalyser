as yet unclassified
getTokenizedMethodsAndNames
	| allClasses classes sourceTokenizer nameTokenizer methods |
	allClasses := Smalltalk globals allClasses.
	"classes := (1 to: 100) collect: [ :i | allClasses at: i ]."
	classes := allClasses.
	
	sourceTokenizer := SourceCodeTokenizer new.
	nameTokenizer := IdentifierNameTokenizer new.

	methods := classes
		flatCollect: [ :eachClass | 
			eachClass methods
				collect: [ :eachMethod | 
					| sourceTokenized nameTokenized |
					sourceTokenized := ' ' join: (sourceTokenizer tokenize: eachMethod).
					nameTokenized := ' ' join: (nameTokenizer tokenize: eachMethod selector asString).
					{sourceTokenized . nameTokenized} ] ].
	^ methods