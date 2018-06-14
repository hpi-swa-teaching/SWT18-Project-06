as yet unclassified
checkLectureMethod: aPlaygroundMorph

	|spy assertion morph|

	spy := MotuSpy spyOn: aPlaygroundMorph.
	assertion := MotuAssertion new.
	morph := self performLectureMethodWith: spy.

	[
	assertion assert: morph hasClass: Morph errMessage: 'You did not return an instance of Morph to us!'.
	spy expect: #addMorph: withArgs: {morph} errMessage: 'You did not #openInWorld:!'.
	self pass]
		on: Error do: [:e | self failWith: e asString]
