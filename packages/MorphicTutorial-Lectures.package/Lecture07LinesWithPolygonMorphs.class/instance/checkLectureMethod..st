as yet unclassified
checkLectureMethod: aPlaygroundMorph 
	| polygon |
	self setFailed.
	self feedback: 'Your code is not correct.'.
	polygon := self createLineFrom: 0 @ 0 to: 100 @ 100.
	(polygon isKindOf: PolygonMorph)
		ifFalse: [^ self failWithFeedback: 'Your method does not return a PolygonMorph.'].
	
	aPlaygroundMorph addMorph: polygon.
	
	(polygon vertices size = 2
			and: [polygon vertices first - aPlaygroundMorph visibleClearArea origin = (0@0)]
			and: [polygon vertices last  - aPlaygroundMorph visibleClearArea origin = (100@ 100)])
		ifFalse: [^ self failWithFeedback: 'You should pass the two given points to the PolygonMorph.'].
	polygon borderColor = Color red
		ifFalse: [ ^ self failWithFeedback: 'Your line should be red.'].
	
	self setPassed.
	self feedback: 'Great job!'