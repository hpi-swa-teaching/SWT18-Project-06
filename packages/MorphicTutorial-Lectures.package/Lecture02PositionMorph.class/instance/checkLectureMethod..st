as yet unclassified
checkLectureMethod: aPlaygroundMorph

	|spy morph|

	super checkLectureMethod: aPlaygroundMorph.
	morph := Morph new
		openInWorld: aPlaygroundMorph;
		yourself.
	spy := MotuSpy spyOn: morph reportTo: self.
	
	self move: spy.
	spy expect: #position: withArgs: {150@350} errMessage: 'Setze den Morph zu 150@350 mittels #position:.'