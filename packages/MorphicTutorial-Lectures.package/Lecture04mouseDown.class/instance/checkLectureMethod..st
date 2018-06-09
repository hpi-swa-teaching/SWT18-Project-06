as yet unclassified
checkLectureMethod: aPlaygroundMorph	
	| colorfulMorph spy | 
	
	colorfulMorph := ColorfulMorph new
		openInWorld: aPlaygroundMorph;
		yourself.
	spy := MotuSpy spyOn: colorfulMorph.
	self performLectureMethodWith: spy.
	
	[
	spy expect: #on:send:to: withArgs: {#mouseDown. #switchColors. spy} errMessage: 'Your method is not correct.'.
	self markAsPassed] 
		on: Error do: [:e | self markAsFailedWithMessage: e asString]