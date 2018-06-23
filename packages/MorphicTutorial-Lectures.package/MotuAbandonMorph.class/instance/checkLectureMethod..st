as yet unclassified
<<<<<<< HEAD
checkLectureMethod: aPlaygroundMorph 
	| spy |
	self
		morph: (Morph new openInWorld: aPlaygroundMorph).
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
=======
checkLectureMethod: aPlaygroundMorph

	|spy morph|

	morph := Morph new
		openInWorld: aPlaygroundMorph;
		yourself.
	spy := MotuSpy spyOn: morph.
	self performLectureMethodWith: spy.

	[spy expect: #delete withArgs: {}
		errMessage: '']
		on: Error
		do: [[spy expect: #abandon withArgs: {}
				errMessage: 'Let the Morph disappear using delete or abandon.']
				on: Error
				do: [:e | self failWith: e asString.
>>>>>>> b7c074b6d1255dc559dd7d3b21e2ac06b611eecb
					^ self]].
	self pass