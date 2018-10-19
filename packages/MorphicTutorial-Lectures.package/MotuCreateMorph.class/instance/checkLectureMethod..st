evaluation
checkLectureMethod: aPlaygroundMorph 
	| morph |
	morph := self performLectureMethodWith: aPlaygroundMorph.
	
	[self asserter
		assert: morph
		hasClass: Morph
		errorMessage: 'You did not return an instance of Morph to us!'.
	self asserter
		assertBlock: [aPlaygroundMorph submorphs includes: morph]
		errorMessage: 'You did not open the Morph in the tutorial world!'.
	self pass]
		on: Error
		do: [:error | self failWith: error asString]