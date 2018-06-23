accessing
dontExpect: aSelector errMessage: aString

	(self history anySatisfy: [:aMessage | aMessage selector = aSelector])
		ifTrue: [ ^ self error: aString ]