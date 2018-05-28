as yet unclassified
checkLectureMethod: aPlaygroundMorph
	|spy assertion morph|
	
	self markAsPassed.
	spy := MotuSpy spyOn: aPlaygroundMorph reportTo: self.
	assertion := MotuAssertion reportTo: self.
	morph := self performLectureMethodWith: spy.

	assertion assert: morph hasClass: Morph errMessage: 'Du hast kein Object der Klasse Morph returned!'.
	spy expect: #addMorph: withArgs: {morph} errMessage: 'Du hast den Morph nicht zur übegebenen Welt hinzugefügt!'