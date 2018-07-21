as yet unclassified
testCorrectIconForLecture
	| lecture listWrapper |
	
	lecture := MotuLecture new.
	listWrapper := MotuLectureListItemWrapper new.
	listWrapper setItem: lecture.
	
	lecture pass.
	self assert: listWrapper icon = (ToolIcons iconNamed: #testGreen).
	lecture fail.
	self assert: listWrapper icon = (ToolIcons iconNamed: #testRed).
	
	
	