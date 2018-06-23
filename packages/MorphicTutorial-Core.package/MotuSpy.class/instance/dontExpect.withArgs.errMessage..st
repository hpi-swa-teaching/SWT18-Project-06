accessing
dontExpect: aSelector withArgs: aCollection errMessage: aString
			
	(self history anySatisfy: [:aMessage | aMessage selector = aSelector and: [aMessage arguments = aCollection]])
		ifTrue: [ ^ self error: aString ]