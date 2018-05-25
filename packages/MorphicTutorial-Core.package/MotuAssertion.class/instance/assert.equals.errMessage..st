accessing
assert: anObjectA equals: anObjectB errMessage: aString
	
	anObjectA = anObjectB ifFalse: [
		self reporter report: aString]
	
	