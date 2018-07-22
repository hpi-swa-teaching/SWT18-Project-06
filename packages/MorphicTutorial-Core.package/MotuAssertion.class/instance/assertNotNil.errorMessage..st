assertions
assertNotNil: anObject errorMessage: aString
	anObject ifNil: [^ self error: aString]
	
	