recording
doesNotUnderstand: aMessage
	
	self history add: aMessage.
	Transcript show: (self findCallsIn: aMessage).
	^ aMessage sendTo: self morph