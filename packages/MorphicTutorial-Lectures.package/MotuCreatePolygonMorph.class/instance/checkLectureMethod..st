as yet unclassified
checkLectureMethod: aPlaygroundMorph 
	| spy asserter polygon |
	spy := MotuSpy spyOn: aPlaygroundMorph.
	asserter := MotuAssertion new.
	polygon := self openPolygonMorph: spy.
	[asserter assertNotNil: polygon errorMessage: 'Please return your PolygonMorph. You returned nil instead.'.
	asserter
		assert: polygon
		hasClass: PolygonMorph
		errorMessage: 'Please return your PolygonMorph. You returned something different.'.
	spy
		expect: #addMorph:
		withArgs: {polygon}
		errorMessage: 'Please open the PolygonMorph in the world we provide you with.'.
	self pass]
		on: Error
		do: [:error | self failWith: error asString]