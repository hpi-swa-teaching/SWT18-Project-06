accessing
assert: anObjectA equals: anObjectB errMessage: aString
	anObjectA = anObjectB ifFalse: [^ self error: aString]
	
	