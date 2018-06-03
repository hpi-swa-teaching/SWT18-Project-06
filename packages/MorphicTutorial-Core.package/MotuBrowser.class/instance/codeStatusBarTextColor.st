ui
codeStatusBarTextColor

	self selectedLecture ifNil: [^Color black].
	self selectedLecture passed ifTrue: [^Color black] ifFalse: [^Color white] 	