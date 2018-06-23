accessing
assertBlock: aBlock errMessage: aString

	aBlock value ifFalse: [^ self error: aString]
	
	