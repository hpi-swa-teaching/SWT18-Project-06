as yet unclassified
checkLectureMethod: aPlaygroundMorph 
	self morph: (ColorfulMorph new color: Color red; yourself).
	self morph step.
	[self asserter
		assert: self morph color
		equals: Color blue
		errorMessage: 'You did not implement step right.'.
	self pass]
		on: Error
		do: [:error | self failWith: error asString].
	self setUp: aPlaygroundMorph.