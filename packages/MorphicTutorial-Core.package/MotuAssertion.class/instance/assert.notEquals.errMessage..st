accessing
assert: anObjectA notEquals: anObjectB errMessage: aString
	
	anObjectA = anObjectB ifTrue: [
		self reporter report: aString]
	
	