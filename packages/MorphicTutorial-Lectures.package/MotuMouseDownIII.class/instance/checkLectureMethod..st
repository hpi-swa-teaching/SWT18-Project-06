evaluation
checkLectureMethod: aPlaygroundMorph 
	self morph: (ColorfulMorph new color: Color blue; yourself).
	self morph handleMouseDown: nil.
	[self asserter
		assert: self morph color
		equals: Color red
		errorMessage: 'Click does not work on your morph..'.
	self pass]
		on: Error
		do: [:error | self failWith: error asString].
	
	self setUp: aPlaygroundMorph.
