recording
doesNotUnderstand: aMessage
	
	FileStream startUp: true.
	FileStream stdout nextPutAll: 'self: ', self printString, ' aMessage: ', aMessage printString, Character lf; flush.
	self history add: aMessage selector.
	self parameters addLast: aMessage arguments.
	self findCallsIn: aMessage selector.
	^ self morph
		perform: aMessage selector
		withArguments: aMessage arguments