accessing
dontExpect: aSelector withArgs: aCollection errorMessage: aString
			
	(self history anySatisfy: [:aMessage | aMessage selector = aSelector and: [aMessage arguments = aCollection]])
		ifTrue: [ ^ self error: aString ]