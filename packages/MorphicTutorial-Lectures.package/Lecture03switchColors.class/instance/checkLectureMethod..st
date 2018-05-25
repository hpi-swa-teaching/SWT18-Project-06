as yet unclassified
checkLectureMethod: aPlaygroundMorph	
	|spy|
	
	self markAsPassed.
	
	self color: Color blue.
	spy := MotuSpy spyOn: self reportTo: self.
	
	self switchColors.
	spy expect: #color: withArgs: {Color red} errMessage: 'Deine Funktion wechselt die Farbe des Morphs nicht von blau auf rot!'
	self switchColors.
	spy expect: #color: withArgs: {Color red} errMessage: 'Deine Funktion wechselt die Farbe des Morphs nicht von rot auf blau!'