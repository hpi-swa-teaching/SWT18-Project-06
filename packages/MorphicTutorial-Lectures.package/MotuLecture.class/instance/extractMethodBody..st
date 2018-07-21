code-transformation
extractMethodBody: aString
	| indexOfNewline |
	
	indexOfNewline := aString indexOf: Character cr.
	indexOfNewline = 0 ifTrue: [ ^ '' ].
	^ aString copyFrom: indexOfNewline+1 to: aString size