as yet unclassified
checkLectureMethod: aPlaygroundMorph

	|spy asserter polygon|
	
	self setFailed.
	self feedback: 'Please type in correct code.'.
	
	spy := MotuSpy spyOn: aPlaygroundMorph.
	asserter := MotuAssertion new.
	polygon := self openPolygonMorph: spy.
	
	[
	asserter assertNotNil: polygon errMessage: 'Please return your PolygonMorph. You returned nil instead.'.
	asserter assert: polygon hasClass: PolygonMorph errMessage: 'Please return your PolygonMorph. You returned something different.'.
	spy expect: #addMorph: withArgs: {polygon} errMessage: 'Please open the PolygonMorph in the world we provide you with.'.
	self markAsPassed] 
		on: Error do: [:e | self markAsFailedWithMessage: e asString]