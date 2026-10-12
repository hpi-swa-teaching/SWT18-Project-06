style
codeStatusBarColor

	self selectedLecture ifNil: [^ self statusColorNil].
	^ self selectedLecture passed
		ifTrue: [self statusColorSuccess]
		ifFalse: [self statusColorFailure]