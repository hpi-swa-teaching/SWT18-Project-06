accessing
assertNotNil: anObject errMessage: aString

	anObject ifNil: [^ self error: aString]
	
	