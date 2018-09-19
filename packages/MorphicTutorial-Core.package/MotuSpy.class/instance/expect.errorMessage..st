expect
expect: aSelector errorMessage: aString
			
	(self historySelectors anySatisfy: [:aMessage | aMessage selector = aSelector])
		ifFalse: [ ^ self error: aString ]