as yet unclassified
checkLectureMethod: aPlaygroundMorph
	|spy morph|
	
	self markAsPassed.
	morph := Morph new
		openInWorld: aPlaygroundMorph;
		yourself.
	spy := MotuSpy spyOn: morph reportTo: self.
	
	morph := self performLectureMethodWith: spy.
	spy expect: #position: withArgs: {150@350} errMessage: '#position: the Morph at 150@350.'
	