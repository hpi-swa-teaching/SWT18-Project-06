accessing
activeLecture: aLecture

	activeLecture := aLecture.
	self code: aLecture codeToEdit.
	self styleEnvironment: (self createStyleEnvironmentFor: aLecture)