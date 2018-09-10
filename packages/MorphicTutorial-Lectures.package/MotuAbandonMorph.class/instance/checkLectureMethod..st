evaluation
checkLectureMethod: aPlaygroundMorph 
	| spy |
	
	self morph: (Morph new openInWorld: aPlaygroundMorph).
	spy := MotuSpy spyOn: self morph.
	self performLectureMethodWith: spy.
	[spy 
		dontExpect: #delete 
		errorMessage: 'We told you there was a better method than delete'.
	spy
		expect: #abandon
		withArgs: {}
		errorMessage: 'Let the Morph disappear.']
		on: Error
		do: [:error | 
			self failWith: error asString.
			^ self].
	self pass