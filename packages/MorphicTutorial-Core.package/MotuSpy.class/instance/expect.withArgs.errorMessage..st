expect
expect: aSelector withArgs: aCollection errorMessage: aString
			
	((self history includes: aSelector) 
	and: [self parameters includes: aCollection])
		ifFalse: [ ^ self error: aString ]