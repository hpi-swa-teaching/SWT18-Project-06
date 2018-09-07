code-transformation
extractParameterNamesFrom: aString 

	^ self
		select: (('\W+' asRegex copy: aString replacingMatchesWith: ' ')
				splitBy: ' ')
		withIndex: [:value :index | index \\ 2 = 0]