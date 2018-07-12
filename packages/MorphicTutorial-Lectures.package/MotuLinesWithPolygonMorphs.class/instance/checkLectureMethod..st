as yet unclassified
checkLectureMethod: aPlaygroundMorph 
	| polygon |
	polygon := self createLineFrom: 0 @ 0 to: 100 @ 100.
	[self asserter
		assert: polygon
		hasClass: PolygonMorph
		errorMessage: 'Your method does not return a PolygonMorph.'.
	self asserter 
		assertBlockCollection: {[polygon vertices size = 2]. [polygon vertices first = (0 @ 0)]. [polygon vertices last = (100 @ 100)]} 
		errorMessage: 'You should pass the two given points to the PolygonMorph.'.
	self asserter
		assert: polygon borderColor
		equals: Color red
		errorMessage: 'Your line should be red.'.
	aPlaygroundMorph addMorph: polygon.
	self pass]
		on: Error
		do: [:error | self failWith: error asString]