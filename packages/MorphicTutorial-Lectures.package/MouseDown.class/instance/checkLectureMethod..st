as yet unclassified
checkLectureMethod: aPlaygroundMorph	
	|spy| 
	
	self morph: (ColorfulMorph new
		openInWorld: aPlaygroundMorph;
		yourself).
	spy := MotuSpy spyOn: self morph.
	self performLectureMethodWith: spy.
	
	[spy
		expect: #on:send:to:
		withArgs: {#mouseDown. #switchColors. spy}
		errorMessage: 'Your method is not correct.'.
	self pass] 
		on: Error do: [:e | self failWith: e asString]