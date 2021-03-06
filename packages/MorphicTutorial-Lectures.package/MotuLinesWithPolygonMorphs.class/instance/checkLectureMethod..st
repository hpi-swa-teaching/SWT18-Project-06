evaluation
checkLectureMethod: aPlaygroundMorph 
	| polygon |
	polygon := self createLineFrom: 0 @ 0 to: 100 @ 100.
	[self asserter
		assert: polygon
		hasClass: PolygonMorph
		errorMessage: 'Your method does not return a PolygonMorph.'.
	self asserter 
		assertBlockCollection: {
			[polygon vertices size = 2]. 
			[polygon vertices first = (0 @ 0) or: [polygon vertices first = (100 @ 100)]].
			[polygon vertices last = (100 @ 100) or: [polygon vertices last = (0 @ 0)]]} 
		errorMessage: 'You should pass the two given points to the PolygonMorph.'.
	aPlaygroundMorph addMorph: polygon.
	polygon position: aPlaygroundMorph position.
	self asserter
		assert: polygon color
		equals: Color red
		errorMessage: 'Your line should be red.'.
	self asserter
		assertBlock: [polygon borderWidth > 0]
		errorMessage: 'Your line should have border'.
	self asserter
		assert: polygon borderColor
		equals: Color red
		errorMessage: 'Your line''s borderColor should also be red.'.
	self pass]
		on: Error
		do: [:error | self failWith: error asString]