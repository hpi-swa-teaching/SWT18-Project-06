as yet unclassified
checkLectureMethod: aPlaygroundMorph
	|spy assertion morph|
	
	self markAsPassed.
	spy := MotuSpy spyOn: aPlaygroundMorph reportTo: self.
	assertion := MotuAssertion reportTo: self.
	morph := self performLectureMethodWith: spy.

	assertion assert: morph hasClass: Morph errMessage: 'You did not return an instance of Morph to us!'.
	spy expect: #addMorph: withArgs: {morph} errMessage: 'You did not #openInWorld:!'