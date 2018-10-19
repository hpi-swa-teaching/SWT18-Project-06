assertions
assertBlock: aBlock errorMessage: aString
	aBlock value ifFalse: [^ self error: aString]
	
	