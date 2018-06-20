accessing
assertBlock: aBlock errorMessage: aString

	aBlock value ifFalse: [^ self error: aString]
	
	