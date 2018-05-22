accessing
report: aString
	"Used to implement a reporter on MotuSpy."

	self passed ifTrue: [ 
		self setFailed.
		self feedback: aString]