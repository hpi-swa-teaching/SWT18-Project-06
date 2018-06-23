accessing
<<<<<<< HEAD:packages/MorphicTutorial-Core.package/MotuSpy.class/instance/dontExpect.withArgs.errorMessage..st
dontExpect: aSelector withArgs: aCollection errorMessage: aString
			
	(self history anySatisfy: [:aMessage | aMessage selector = aSelector and: [aMessage arguments = aCollection]])
		ifTrue: [ ^ self error: aString ]
=======
expect: aSelector withArgs: aCollection errMessage: aString
			
	(self history anySatisfy: [:aMessage | aMessage selector = aSelector and: [aMessage arguments = aCollection]])
		ifFalse: [ ^ self error: aString ]
>>>>>>> b7c074b6d1255dc559dd7d3b21e2ac06b611eecb:packages/MorphicTutorial-Core.package/MotuSpy.class/instance/expect.withArgs.errMessage..st
