evaluation
checkLectureMethod: aPlaygroundMorph 
	| spy morph oldWorld |
	spy := MotuSpy spyOn: aPlaygroundMorph.
	oldWorld := ActiveWorld.
	[ActiveWorld := spy.
	morph := self performLectureMethodWith: spy]
		ensure: [ActiveWorld := oldWorld].
	
	[self asserter
		assert: morph
		hasClass: Morph
		errorMessage: 'You did not return an instance of Morph to us!'.
	spy
		expect: #addMorph:
		withArgs: {morph}
		errorMessage: 'You did not use #openInWorld or openInWorld: !'.
	self pass]
		on: Error
		do: [:error | self failWith: error asString]