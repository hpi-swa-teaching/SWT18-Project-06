accessing
expect: aSelector withArgs: aCollection errMessage: aString
	self spyReporter hasFailed ifTrue: [^self].
	(self history anySatisfy: [:aMessage | aMessage selector = aSelector and: [aMessage arguments = aCollection]])
			ifFalse: [
				self spyReporter passed: false.
				self spyReporter feedback: aString]