ui
lectureIconAt: anIndex

	|icon|
	icon := (MotuLecture allLectures at: anIndex) instance isPassed
		ifTrue: [#testGreen]
		ifFalse: [#testRed].
	^ ToolIcons iconNamed: icon