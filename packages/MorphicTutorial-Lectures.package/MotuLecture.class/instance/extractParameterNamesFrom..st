code-transformation
extractParameterNamesFrom: aString 

	^ self
		select: ((aString copyWithRegex: '\W+' matchesReplacedWith: ' ')
				splitBy: ' ')
		withIndex: [:value :index | index \\ 2 = 0]