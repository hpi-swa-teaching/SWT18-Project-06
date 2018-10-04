evaluation
checkLectureMethod: aPlayground
	
	| spy |
	self setUp: aPlayground.
	self morph: Morph new.
	spy := MotuSpy spyOn: self morph.
	[self rotateMorph: spy.
	spy
		expect: #heading:
		errorMessage: 'Look for a method that calls #heading:'.
	spy expect: #rotationDegrees: 
		errorMessage: 'Remember that you want to rotate the morph by degrees.'.
	self pass] 
	on: Error
	do: [:error | self failWith: error asString] 