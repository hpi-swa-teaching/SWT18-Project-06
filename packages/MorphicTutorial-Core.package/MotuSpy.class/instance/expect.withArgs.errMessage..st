accessing
expect: aSelector withArgs: aCollection errMessage: aString
	
	(self history anySatisfy: [:aMessage | aMessage selector = aSelector and: [aMessage arguments = aCollection]])
			ifFalse: [ self spyReporter report: aString ]