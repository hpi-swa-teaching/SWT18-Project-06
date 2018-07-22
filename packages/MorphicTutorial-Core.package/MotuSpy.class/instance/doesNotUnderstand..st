recording
doesNotUnderstand: aMessage

	self history add: aMessage.
	^ aMessage sendTo: self morph