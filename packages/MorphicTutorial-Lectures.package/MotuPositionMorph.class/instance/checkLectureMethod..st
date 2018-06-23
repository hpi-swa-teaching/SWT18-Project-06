as yet unclassified
checkLectureMethod: aPlaygroundMorph 
	| spy morph |
	morph := Morph new.
	
	spy := MotuSpy spyOn: morph.
	self performLectureMethodWith: spy.
	[spy dontExpect: #x: errorMessage: 'Do not call x: directly. There is a better way to set the position. Trust me!'.
	spy dontExpect: #y: errorMessage: 'Do not call y: directly. There is a better way to set the position. Trust me!'.
	spy dontExpect: #x:y: errorMessage: 'Do not call x:y: directly. There is a better way to set the position. Trust me!'.
	spy
		expect: #position:
		withArgs: {150 @ 350}
		errorMessage: '#position: the Morph at 150@350.'.
	aPlaygroundMorph addMorph: morph.
	self pass.]
		on: Error
		do: [:error | self failWith: error asString]