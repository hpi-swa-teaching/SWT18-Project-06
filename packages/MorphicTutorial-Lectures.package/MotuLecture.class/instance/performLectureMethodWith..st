as yet unclassified
performLectureMethodWith: anObject
	self assert: self simulateWorkspace.
	^ self perform: self lectureMethod selector with: anObject