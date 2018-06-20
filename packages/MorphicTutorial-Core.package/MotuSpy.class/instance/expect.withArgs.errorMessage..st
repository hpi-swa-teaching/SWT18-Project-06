accessing
expect: aSelector withArgs: aCollection errorMessage: aString
			
	(self history anySatisfy: [:aMessage | aMessage selector = aSelector and: [aMessage arguments = aCollection]])
		ifFalse: [ ^ self error: aString ]