evaluation
checkLectureMethod: aPlaygroundMorph 
	| spy |
	
	self morph: (Morph new openInWorld: aPlaygroundMorph).
	spy := MotuSpy spyOn: self morph.
	self performLectureMethodWith: spy.
	[spy
		expect: #delete
		withArgs: {}
		errorMessage: '']
		on: Error
		do: [[spy
				expect: #abandon
				withArgs: {}
				errorMessage: 'Let the Morph disappear using delete or abandon.']
				on: Error
				do: [:error | 
					self failWith: error asString.
					^ self]].
	self pass