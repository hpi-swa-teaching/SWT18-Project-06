accessing
resetLecture
	| methodHead |
	methodHead := self extractMethodName: self solution.
	self lectureMethod methodClass compile: methodHead