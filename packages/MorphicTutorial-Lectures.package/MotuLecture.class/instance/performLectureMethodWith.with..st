as yet unclassified
performLectureMethodWith: anObject with: anotherObject
	self assert: self simulateWorkspace.
	^ self perform: self lectureMethod selector with: anObject with: anotherObject