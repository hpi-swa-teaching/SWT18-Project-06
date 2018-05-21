accessing
expect: aSelector withArgs: aCollection errMessage: aString onSuccess: aBlock

	 ^ (self historie anySatisfy: [:aMessage | aMessage selector = aSelector and: [aMessage arguments = aCollection]])
			ifTrue: aBlock
			ifFalse: aString