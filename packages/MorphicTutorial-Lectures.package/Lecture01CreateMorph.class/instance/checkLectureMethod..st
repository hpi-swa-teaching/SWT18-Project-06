as yet unclassified
checkLectureMethod: aPlaygroundMorph
	|spy morph|
	self flag: #refactor. "Seems to be dirty to make call this always first."
	self markAsPassed.
	spy := MotuSpy spyOn: aPlaygroundMorph reportTo: self.
	
	morph := self performLectureMethodWith: spy.
	
	self flag: #refactor. "We have to check what kind of Obect we get from the user. Refactor THIS!!!"
	morph == self ifTrue: [
		self 
			passed: false;
			feedback: 'Deine Funktion gibt etwas falsches zurück.'.
		^ self].

	spy expect: #addMorph: withArgs: {morph} errMessage: 'Returne den Morph, auf dem Du "openInWorld: aPlaygroundMorph" aufrufst.'