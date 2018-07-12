code-transformation
extractMethodName: aString
	| indexOfNewline |
	indexOfNewline := aString indexOf: Character cr.
	^aString copyFrom: 1 to: indexOfNewline - 1