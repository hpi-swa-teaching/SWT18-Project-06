as yet unclassified
checkLectureMethod: aPlaygroundMorph 
	| polygon asserter |
	polygon := self createStar.
	polygon openInWorld: aPlaygroundMorph.
	asserter := MotuAssertion new.
	[asserter assertNotNil: polygon errorMessage: 'Please return your PolygonMorph. You returned nil instead.'.
	asserter
		assert: polygon
		hasClass: PolygonMorph
		errorMessage: 'Please return your PolygonMorph. You returned something different.'.
	asserter
		assertBlock: [MotuStarTester new constructsStar: polygon vertices]
		errorMessage: 'Your Polygon does not have the shape of a star.'.
	aPlaygroundMorph addMorph: polygon.
	self pass]
		on: Error
		do: [:error | self failWith: error asString]