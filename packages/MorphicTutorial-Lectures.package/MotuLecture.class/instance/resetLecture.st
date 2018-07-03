accessing
resetLecture
	self lectureMethod methodClass compile: self methodName.
	self setFailed.
	self feedback: ''