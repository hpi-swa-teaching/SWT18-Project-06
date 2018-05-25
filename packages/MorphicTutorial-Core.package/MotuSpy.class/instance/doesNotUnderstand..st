as yet unclassified
doesNotUnderstand: aMessage
	self history add: aMessage.
	^ aMessage sendTo: self morph