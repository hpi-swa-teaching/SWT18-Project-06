ui
codeStatusBarColor
	self selectedLecture ifNil: [^Color white].
	self selectedLecture passed ifTrue: [^Color green] ifFalse: [^Color red] 	