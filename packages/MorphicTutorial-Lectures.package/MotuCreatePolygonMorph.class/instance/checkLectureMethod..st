evaluation
checkLectureMethod: aPlaygroundMorph 
	| spy polygon |
	spy := MotuSpy spyOn: aPlaygroundMorph.
	
	polygon := self performLectureMethodWith: spy.
	
	[self asserter
		assertNotNil: polygon 
		errorMessage: 'Please return your PolygonMorph. You returned nil instead.'.
	self asserter
		assert: polygon
		hasClass: PolygonMorph
		errorMessage: 'Please return your PolygonMorph. You returned something different.'.
	spy
		expect: #addMorph:
		withArgs: {polygon}
		errorMessage: 'Please open the PolygonMorph in the world we provide you with.'.
	"move the polygon into view"
	polygon position: polygon position + spy position.
	self pass]
		on: Error
		do: [:error | self failWith: error asString]