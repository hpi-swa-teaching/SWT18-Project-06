as yet unclassified
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
					^ self]].
	self pass