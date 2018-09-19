evaluation
checkLectureMethod: aPlaygroundMorph 
	| spy |
	
	self morph: (Morph new openInWorld: aPlaygroundMorph).
	spy := MotuSpy spyOn: self morph.
	self performLectureMethodWith: spy.
	[spy
		expect: #delete
		errorMessage: 'Let the Morph disappear.'.
	spy 
		expect: #abandon
		before: #delete
		errorMessage: 'We told you there was a better method than delete']
		on: Error
		do: [:error | 
			self failWith: error asString.
			^ self].
	self pass