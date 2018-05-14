ui
lectureIconAt: anIndex

	|icon|
	icon := (MotuLecture allLectures at: anIndex) isPassed
		ifTrue: [#testGreen]
		ifFalse: [#testRed].
	^ ToolIcons iconNamed: icon