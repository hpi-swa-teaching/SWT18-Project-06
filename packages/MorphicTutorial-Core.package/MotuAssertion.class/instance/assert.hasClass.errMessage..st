accessing
assert: anObject hasClass: aClass errMessage: aString
	
	anObject class = aClass ifFalse: [^ self error: aString]