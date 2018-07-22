evaluation
resetLecture 
	self fail.
	self feedback: ''.
	self lectureMethod methodClass compile: self methodName, Character cr, Character tab, '^ super handlesMouseDown: anEvent'.