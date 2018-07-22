evaluation
checkLectureMethod: aPlaygroundMorph 
	self setUp: aPlaygroundMorph.
	[self asserter
		assert: self morph stepTime
		equals: 1000
		errorMessage: 'You should set the stepTime to 1000'.
	self pass]
		on: Error
		do: [:error | self failWith: error asString]
