recording
doesNotUnderstand: aMessage
	
	self history add: aMessage selector.
	self parameters addLast: aMessage arguments.
	self findCallsIn: aMessage selector.
	^ self morph
		perform: aMessage selector
		withArguments: aMessage arguments