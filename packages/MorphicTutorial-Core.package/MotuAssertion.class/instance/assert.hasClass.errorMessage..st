assertions
assert: anObject hasClass: aClass errorMessage: aString
	anObject class = aClass ifFalse: [^ self error: aString]