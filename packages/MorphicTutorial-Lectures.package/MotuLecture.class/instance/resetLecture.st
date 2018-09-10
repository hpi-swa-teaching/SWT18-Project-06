solving
resetLecture
	"Workaround: try to find out if this is an actual implemented lecture by running lectureMethod once"
	[self lectureMethod]
		on: Error
		do: [^ self].
	self lectureMethod methodClass compile: self methodName.
	self fail.
	self feedback: ''