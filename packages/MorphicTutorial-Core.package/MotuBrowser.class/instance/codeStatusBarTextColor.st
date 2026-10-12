style
codeStatusBarTextColor

	self selectedLecture ifNil: [^ self statusTextColorNil].
	^ self selectedLecture passed
		ifTrue: [self statusTextColorSuccess]
		ifFalse: [self statusTextColorFailure]