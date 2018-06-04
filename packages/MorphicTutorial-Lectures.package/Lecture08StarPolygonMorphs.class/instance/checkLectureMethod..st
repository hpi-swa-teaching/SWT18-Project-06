as yet unclassified
checkLectureMethod: aPlaygroundMorph 

	|polygon|

	self setFailed.
	self feedback: 'Please type in correct code.'.

	polygon := self createStar.
	polygon ifNil: [
		^ self
			feedback: 'Please return your PolygonMorph. You returned nil instead.';
			setFailed].
	(polygon isKindOf: PolygonMorph) ifFalse: [
		^ self
			feedback: 'Please return your PolygonMorph. You returned something different.';
			setFailed].
	(MotuStarTester new constructsStar: polygon vertices) ifFalse: [
		^ self
			feedback: 'Your Polygon does not have the shape of a star.';
			setFailed].

	polygon openInWorld: aPlaygroundMorph.
	self setPassed.
	self feedback: 'Bigly!'