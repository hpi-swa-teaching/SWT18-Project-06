evaluation
checkLectureMethod: aPlaygroundMorph

	|morphSpy staticSpy| 
	self setUp: aPlaygroundMorph.
	morphSpy := MotuSpy spyOn: self morph.
	staticSpy := MotuSpy spyOn: self staticMorph.
	self performLectureMethodOn: morphSpy with: staticSpy.
	
	[self assert: (morphSpy collidesWith: staticSpy).
	staticSpy
		expect: #bounds
		withArgs: {}
		errorMessage: 'A morph is not a rectangle. You have to think outside of your bounds'.
	self pass] 
		on: Error do: [:e | self failWith: e asString]