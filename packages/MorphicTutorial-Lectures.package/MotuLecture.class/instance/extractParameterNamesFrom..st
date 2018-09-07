code-transformation
extractParameterNamesFrom: aString 
	"Do not use Regex, as it is not available in Squeak 5.0"
	^ self
		select: (((aString collect: [:each | each isAlphaNumeric ifTrue: each ifFalse: Character space])
				splitBy: ' ') select: [:each | each isEmpty not])
		withIndex: [:value :index | index \\ 2 = 0]