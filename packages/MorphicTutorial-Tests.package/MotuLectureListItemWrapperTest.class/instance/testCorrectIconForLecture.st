as yet unclassified
testCorrectIconForLecture
	| lectureMock listWrapper |
	lectureMock := MotuLecture new.
	listWrapper := MotuLectureListItemWrapper new.
	listWrapper setItem: lectureMock.
	
	lectureMock pass.
	self assert: listWrapper icon = (ToolIcons iconNamed: #testGreen).
	lectureMock fail.
	self assert: listWrapper icon = (ToolIcons iconNamed: #testRed).
	
	
	