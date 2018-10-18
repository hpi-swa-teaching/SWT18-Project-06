expect
dontExpect: aSelector errorMessage: aString

	(self history includes: aSelector)
		ifTrue: [ ^ self error: aString ]