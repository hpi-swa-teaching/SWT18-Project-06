ui
codeStatusBarColor
	self selectedLecture ifNotNil: [
		self selectedLecture isPassed ifTrue: [^Color green] ifFalse: [^Color red] 	
	].
	^Color white