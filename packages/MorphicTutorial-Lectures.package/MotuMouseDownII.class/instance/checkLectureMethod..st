evaluation
checkLectureMethod: aPlaygroundMorph 
	self morph: ColorfulMorph new.
	self setUp: aPlaygroundMorph.
	[self asserter
		assert: (self morph handlesMouseDown: nil)
		equals: true
		errorMessage: 'Your did not implement handlesMouseDown: correct.'.
	self pass]
		on: Error
		do: [:error | self failWith: error asString]
