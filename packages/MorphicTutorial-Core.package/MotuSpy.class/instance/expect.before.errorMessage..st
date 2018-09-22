expect
expect: aSelector before: otherSelector errorMessage: aString
			
	((self history indexOf: aSelector ifAbsent: [^ self error: aString]) < (self history indexOf: otherSelector))
		ifFalse: [ ^ self error: aString ]