expect
expect: aSelector before: otherSelector errorMessage: aString
			
	((self historySelectors indexOf: aSelector ifAbsent: [^ self error: aString]) < (self historySelectors indexOf: otherSelector))
		ifFalse: [ ^ self error: aString ]