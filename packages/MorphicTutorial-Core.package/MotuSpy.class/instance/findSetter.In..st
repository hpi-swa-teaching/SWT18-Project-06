spying
findSetter: literals In: sourceCode

	| argumentMethods collection inputregex|
	argumentMethods := literals select: [:lit | (lit asString occurrencesOf: (':' asCharacter)) > 0].
	^ argumentMethods select: [:lit | 
			collection := (lit asString splitBy: ':') allButLast.
			collection copy withIndexDo: [:s :i | collection at: i put: s,'[:]'].
			inputregex := (collection inject: '(self ' into: [:regex :item | regex, item,  '.*']), ')'.
			(sourceCode allRegexMatches: inputregex) size > 0]