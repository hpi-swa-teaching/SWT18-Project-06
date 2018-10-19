assertions
denyBlock: aBlock errorMessage: aString
	aBlock value ifTrue: [^ self error: aString]
	
	