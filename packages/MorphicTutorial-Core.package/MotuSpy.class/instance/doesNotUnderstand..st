recording
doesNotUnderstand: aMessage
	
	self history add: aMessage selector.
	self parameters addLast: aMessage arguments.
	self findCallsIn: aMessage selector.
	^ aMessage sendTo: self morph