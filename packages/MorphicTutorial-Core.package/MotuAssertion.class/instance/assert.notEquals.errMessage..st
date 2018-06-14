accessing
assert: anObjectA notEquals: anObjectB errMessage: aString

	anObjectA = anObjectB ifTrue: [^ self error: aString]
	
	