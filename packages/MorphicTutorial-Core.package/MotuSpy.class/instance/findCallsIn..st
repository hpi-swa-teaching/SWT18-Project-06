spying
findCallsIn: aMessage

	| receivingClass methods |
	receivingClass := self findImplementingClass: aMessage in: self morph class.
	methods := OrderedCollection newFrom: (self internalMethods: (receivingClass >> aMessage selector)).
	methods copy do: [:m | 
		(self history includes: m)
		 ifFalse: [self history addLast: m.
			methods addAllLast: (self findCallsIn: m)]].
	^ methods