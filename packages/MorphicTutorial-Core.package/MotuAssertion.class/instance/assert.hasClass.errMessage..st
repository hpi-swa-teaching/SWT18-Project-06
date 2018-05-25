accessing
assert: anObject hasClass: aClass errMessage: aString
	self reporter passed ifFalse: [^self].
	(anObject isKindOf: aClass) ifFalse: [
		self reporter report: aString]
	
	