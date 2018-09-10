evaluation
checkLectureMethod: aPlaygroundMorph 
	self setUp: aPlaygroundMorph.
	[self asserter
		assertBlock: [self morph stepTime ~= 2]
		errorMessage: 'stepTime is measured in milliseconds, use 2000 instead of 2'.
	self asserter
		assert: self morph stepTime
		equals: 2000
		errorMessage: 'You should set the stepTime to 2 seconds'.
	self pass]
		on: Error
		do: [:error | self failWith: error asString]
