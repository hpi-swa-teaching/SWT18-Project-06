as yet unclassified
testCreateLecture
	|lecture|
	
	lecture := MotuLecture new.
	self assert: lecture passed not.
	self assert: lecture feedback = ''.