as yet unclassified
testCorrectIconForLecture
	| lectureMock listWrapper |
	lectureMock := MotuLectureMock new.
	listWrapper := MotuLectureListItemWrapper new.
	listWrapper setItem: lectureMock.
	
	lectureMock setPassed.
	self assert: listWrapper icon = (ToolIcons iconNamed: #testGreen).
	lectureMock setFailed.
	self assert: listWrapper icon = (ToolIcons iconNamed: #testRed).
	
	
	