as yet unclassified
checkLectureMethod: aPlaygroundMorph
	|spy morph|
	
<<<<<<< HEAD
	self markAsPassed.
=======
	super checkLectureMethod: aPlaygroundMorph.
>>>>>>> 485f9a622de42fe6e01661a73d754bc862d9fe13
	morph := Morph new
		openInWorld: aPlaygroundMorph;
		yourself.
	spy := MotuSpy spyOn: morph reportTo: self.
	
	morph := self performLectureMethodWith: spy.
<<<<<<< HEAD
	spy expect: #position: withArgs: {150@350} errMessage: '#position: the Morph at 150@350.'
=======
	spy expect: #position: withArgs: {150@350} errMessage: 'Setze den Morph zu 150@350 mittels #position:.'
>>>>>>> 485f9a622de42fe6e01661a73d754bc862d9fe13
	