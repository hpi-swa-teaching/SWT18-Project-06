accessing
expect: aSelector withArgs: aCollection onFail: aBlock
	
	(self history anySatisfy: [:aMessage | aMessage selector = aSelector and: [aMessage arguments = aCollection]])
			ifFalse: aBlock