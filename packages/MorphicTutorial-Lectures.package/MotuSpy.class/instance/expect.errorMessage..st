expect
expect: aSelector errorMessage: aString
			
	(self history includes: aSelector)
		ifFalse: [ ^ self error: aString ]