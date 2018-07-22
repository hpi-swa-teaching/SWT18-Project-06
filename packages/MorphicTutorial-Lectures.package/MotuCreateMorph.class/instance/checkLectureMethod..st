evaluation
checkLectureMethod: aPlaygroundMorph 
	| spy morph |
	spy := MotuSpy spyOn: aPlaygroundMorph.
	morph := self performLectureMethodWith: spy.
	[self asserter
		assert: morph
		hasClass: Morph
		errorMessage: 'You did not return an instance of Morph to us!'.
	spy
		expect: #addMorph:
		withArgs: {morph}
		errorMessage: 'You did not #openInWorld:!'.
	self pass]
		on: Error
		do: [:error | self failWith: error asString]