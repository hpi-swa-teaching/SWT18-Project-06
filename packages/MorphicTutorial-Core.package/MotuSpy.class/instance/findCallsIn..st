spying
findCallsIn: aMessage

	| receivingClass methods |
	receivingClass := self findImplementingClass: aMessage in: self morph class.
	methods := self internalMethods: (receivingClass >> aMessage selector).
	methods := methods difference: self history.
	self history: (self history union: methods).
	methods copy do: [:m | methods := methods union: (self findCallsIn: m)].
	^ methods