ui
lectureIconAt: anIndex

	|icon|

	icon := (MotuLecture allLectures at: anIndex) instance passed
		ifTrue: [#testGreen]
		ifFalse: [#testRed].

	^ ToolIcons iconNamed: icon