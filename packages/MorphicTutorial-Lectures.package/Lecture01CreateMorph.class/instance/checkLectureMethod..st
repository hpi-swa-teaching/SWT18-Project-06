as yet unclassified
checkLectureMethod: aPlaygroundMorph
<<<<<<< HEAD
	|spy assertion morph|
	
	self markAsPassed.
	spy := MotuSpy spyOn: aPlaygroundMorph reportTo: self.
	assertion := MotuAssertion reportTo: self.
	morph := self performLectureMethodWith: spy.

	assertion assert: morph hasClass: Morph errMessage: 'You did not return an instance of Morph to us!'.
	spy expect: #addMorph: withArgs: {morph} errMessage: 'You did not #openInWorld:!'
=======
	|spy morph|
	self flag: #refactor. "Seems to be dirty to make call this always first."
	super checkLectureMethod: aPlaygroundMorph.
	spy := MotuSpy spyOn: aPlaygroundMorph reportTo: self.
	
	morph := self performLectureMethodWith: spy.
	
	self flag: #refactor. "We have to check what kind of Obect we get from the user. Refactor THIS!!!"
	morph == self ifTrue: [
		self 
			passed: false;
			feedback: 'Deine Funktion gibt etwas falsches zurück.'.
		^ self].

	spy expect: #addMorph: withArgs: {morph} errMessage: 'Returne den Morph, auf dem Du "openInWorld: aPlaygroundMorph" aufrufst.'
>>>>>>> 485f9a622de42fe6e01661a73d754bc862d9fe13
