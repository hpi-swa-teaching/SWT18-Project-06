as yet unclassified
checkLectureMethod: aPlaygroundMorph	
	| colorfulMorph spy | 
	
	self markAsPassed.
	
	colorfulMorph := ColorfulMorph new
		openInWorld: aPlaygroundMorph;
		yourself.
	spy := MotuSpy spyOn: colorfulMorph reportTo: self.
	
	self performLectureMethodWith: spy.
	
	 spy expect: #on:send:to: withArgs: {#mouseDown. #switchColors. spy} errMessage: 'Deine MouseDown handling Methode ist nicht korrekt.' 