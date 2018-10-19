assertions
deny: anObjectA equals: anObjectB errorMessage: aString
	anObjectA = anObjectB ifTrue: [^ self error: aString]
	
	