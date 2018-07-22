expect
dontExpect: aSelector errorMessage: aString

	(self history anySatisfy: [:aMessage | aMessage selector = aSelector])
		ifTrue: [ ^ self error: aString ]