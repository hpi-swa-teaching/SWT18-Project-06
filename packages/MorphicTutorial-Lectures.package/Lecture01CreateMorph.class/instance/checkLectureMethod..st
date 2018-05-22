as yet unclassified
checkLectureMethod: aPlaygroundMorph

	|spy|
	
	spy := MotuSpy spyOn: aPlaygroundMorph reportTo: self.
	
	self openMorphIn: spy.
	spy expect: #openIn withArgs: {Morph new} errMessage: 'Füge einen frisch erstellten Morph in aPlaygroundMorph ein'.