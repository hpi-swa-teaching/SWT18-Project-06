recording
doesNotUnderstand: aMessage
	
	self history add: aMessage selector.
	self parameters addLast: aMessage arguments.
	self findCallsIn: aMessage selector.
	FileStream startUp: true.
	FileStream stdout nextPutAll: 'self: ', self printString, ' aMessage: ', aMessage printString, Character lf; flush.
	^ aMessage sendTo: self morph