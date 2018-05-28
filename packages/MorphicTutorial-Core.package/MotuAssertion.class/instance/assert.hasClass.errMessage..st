accessing
assert: anObject hasClass: aClass errMessage: aString
	self reporter passed ifFalse: [^self].
	anObject class = aClass ifFalse: [
		self reporter report: aString]
	
	