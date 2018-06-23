as yet unclassified
checkLectureMethod: aPlaygroundMorph

	|spy morph|

	morph := Morph new
		openInWorld: aPlaygroundMorph;
		yourself.
	spy := MotuSpy spyOn: morph.

	self performLectureMethodWith: spy.
	
	[
	spy dontExpect: #x: errMessage: 'Do not call x: directly. There is a better way to set the position. Trust me!'.
	spy dontExpect: #y: errMessage: 'Do not call y: directly. There is a better way to set the position. Trust me!'.
	spy expect: #position: withArgs: {150@350} errMessage: '#position: the Morph at 150@350.'.
	self pass] 
		on: Error do: [:e | self failWith: e asString]
	