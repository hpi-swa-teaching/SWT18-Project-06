as yet unclassified
checkLectureMethod: aPlaygroundMorph 
	| spy assertion morph |
	spy := MotuSpy spyOn: aPlaygroundMorph.
	assertion := MotuAssertion new.
	morph := self performLectureMethodWith: spy.
	[assertion
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