evaluation
checkLectureMethod: aPlaygroundMorph 
	| spy outerPosition innerPosition|
	outerPosition := 77@33 + aPlaygroundMorph position.
	aPlaygroundMorph addMorph: (self containerMorph position: outerPosition).
	innerPosition := 33@77.
	self containerMorph addMorph: (self positionMorph position: innerPosition + aPlaygroundMorph position).
	spy := MotuSpy spyOn: self containerMorph.
	self positionMorph position: innerPosition relativeTo: spy.
	
	[spy
		expect: #position
		withArgs: {}
		errorMessage: 'You did ask the given Morph for its position'.
	self positionMorph position = (outerPosition + innerPosition)
		ifFalse: [self error: 'You do not set the position relative to the given morphs position'].
	self pass]
		on: Error
		do: [:error | self failWith: error asString]