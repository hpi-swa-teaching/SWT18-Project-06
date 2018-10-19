evaluation
checkLectureMethod: aPlaygroundMorph 
	| polygon |
	polygon := self createStar.
	[self asserter 
		assertNotNil: polygon 
		errorMessage: 'Please return your PolygonMorph. You returned nil instead.'.
	self asserter
		assert: polygon
		hasClass: PolygonMorph
		errorMessage: 'Please return your PolygonMorph. You returned something different.'.
	polygon openInWorld: aPlaygroundMorph.
	polygon position: aPlaygroundMorph position.
	self asserter
		assertBlock: [MotuStarTester new constructsStar: polygon vertices]
		errorMessage: 'Your Polygon does not have the shape of a star.'.
	self asserter
		assertBlock: [polygon color = Color yellow]
		errorMessage: 'Your star should be yellow.'.
	self asserter
		assertBlock: [polygon borderColor = Color yellow]
		errorMessage: 'Your star''s borderColor should also be yellow'.
	self pass]
		on: Error
		do: [:error | self failWith: error asString]