recording
findGetter: literals In: sourceCode

	| getterLiterals |
	getterLiterals := literals select: [ :lit | (lit asString occurrencesOf: (':' asCharacter)) = 0].
	^ getterLiterals select: [ :getLiteral | (sourceCode allRegexMatches: ('self\s', getLiteral asString,'([^:]|$)')) size > 0]