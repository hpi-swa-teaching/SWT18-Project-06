evaluation
checkLectureMethod: aPlaygroundMorph

	|morphSpy staticSpy| 
	self setUp: aPlaygroundMorph.
	morphSpy := MotuSpy spyOn: self morph.
	staticSpy := MotuSpy spyOn: self staticMorph.
	self performLectureMethodOn: morphSpy with: staticSpy.
	
	[morphSpy
		expect: #intersects:
		withArgs: {staticSpy fullBoundsInWorld}
		errorMessage: 'You need to use the Method #intersects: and call it on self'.
		staticSpy
		expect: #bounds
		withArgs: {}
		errorMessage: 'A morph is not a rectangle. You have to think outside of your bounds'.
	self pass] 
		on: Error do: [:e | self failWith: e asString]