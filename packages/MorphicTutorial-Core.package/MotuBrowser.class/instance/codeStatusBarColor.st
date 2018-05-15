ui
codeStatusBarColor
	self selectedLecture ifNil: [^Color white].
	self selectedLecture isPassed ifTrue: [^Color green] ifFalse: [^Color red] 	