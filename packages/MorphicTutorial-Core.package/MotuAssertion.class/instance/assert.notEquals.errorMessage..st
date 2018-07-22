assertions
assert: anObjectA notEquals: anObjectB errorMessage: aString
	anObjectA = anObjectB ifTrue: [^ self error: aString]
	
	