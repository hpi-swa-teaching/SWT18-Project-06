as yet unclassified
resetLecture 
	self setFailed.
	self feedback: ''.
	self lectureMethod methodClass compile: self methodName, Character cr, Character tab, '^ super stepTime'.