as yet unclassified
checkLectureMethod: aPlaygroundMorph

	|spy morph|

	super checkLectureMethod: aPlaygroundMorph.
	spy := MotuSpy spyOn: aPlaygroundMorph reportTo: self.
	
	morph := self openMorphIn: spy.
	spy expect: #addMorph: withArgs: {morph} errMessage: 'Returne den Morph, auf dem Du "openInWorld: aPlaygroundMorph" aufrufst.'