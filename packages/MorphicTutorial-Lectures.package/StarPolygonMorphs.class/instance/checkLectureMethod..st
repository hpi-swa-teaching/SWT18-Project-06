as yet unclassified
checkLectureMethod: aPlaygroundMorph 
	|polygon asserter|

	polygon := self createStar.
	polygon openInWorld: aPlaygroundMorph.
	
	asserter := MotuAssertion new.
	
	[
	asserter assertNotNil: polygon errMessage: 'Please return your PolygonMorph. You returned nil instead.'.
	asserter assert: polygon hasClass: PolygonMorph errMessage: 'Please return your PolygonMorph. You returned something different.'.
	asserter assertBlock: [MotuStarTester new constructsStar: polygon vertices] errMessage: 'Your Polygon does not have the shape of a star.'.
	aPlaygroundMorph addMorph: polygon.
	self pass] 
		on: Error do: [:e | self failWith: e asString]