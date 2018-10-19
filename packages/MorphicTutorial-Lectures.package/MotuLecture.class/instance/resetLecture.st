solving
resetLecture

	self lectureMethod methodClass compile: self methodName.
	self fail.
	self feedback: ''