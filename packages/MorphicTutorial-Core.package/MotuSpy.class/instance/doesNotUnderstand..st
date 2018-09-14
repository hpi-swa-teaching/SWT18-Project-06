recording
doesNotUnderstand: aMessage
	
	| methods receivingClass |
	self history add: aMessage.
	receivingClass := self findImplementingClass: aMessage in: self morph class.
	methods := self internalMethods: (receivingClass >> aMessage selector).
	^ aMessage sendTo: self morph