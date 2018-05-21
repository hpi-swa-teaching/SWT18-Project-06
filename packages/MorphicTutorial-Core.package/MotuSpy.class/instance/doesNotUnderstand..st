as yet unclassified
doesNotUnderstand: aMessage
	self historie add: aMessage.
	aMessage sendTo: self morph