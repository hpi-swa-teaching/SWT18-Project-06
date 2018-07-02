as yet unclassified
checkLectureMethod: aPlaygroundMorph 
	| spy |
	aPlaygroundMorph addMorph: self morph.
	spy := MotuSpy spyOn: self morph.
	self performLectureMethodWith: spy.
	[spy dontExpect: #x: errorMessage: 'Do not call x: directly. There is a better way to set the position. Trust me!'.
	spy dontExpect: #y: errorMessage: 'Do not call y: directly. There is a better way to set the position. Trust me!'.
	spy dontExpect: #x:y: errorMessage: 'Do not call x:y: directly. There is a better way to set the position. Trust me!'.
	spy
		expect: #position:
		withArgs: {(200 @ 100) + aPlaygroundMorph position}
		errorMessage: 'You did not call position: with the correct parameters'.
	self pass.]
		on: Error
		do: [:error | self failWith: error asString]