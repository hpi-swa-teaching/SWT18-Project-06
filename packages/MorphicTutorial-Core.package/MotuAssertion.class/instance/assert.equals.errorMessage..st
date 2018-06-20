accessing
assert: anObjectA equals: anObjectB errorMessage: aString
	anObjectA = anObjectB ifFalse: [^ self error: aString]
	
	