spying
findCallsIn: aSymbol

	| receivingClass methods |
	^ #()."
	receivingClass := self findImplementingClass: aSymbol in: self morph class.
	receivingClass ifNil: [^ #()].
	methods := OrderedCollection newFrom: (self internalMethods: (receivingClass >> aSymbol)).
	methods copy do: [:m | 
		(self history includes: m)
		 ifFalse: [self history addLast: m.
			methods addAllLast: (self findCallsIn: m)]].
	^ methods"