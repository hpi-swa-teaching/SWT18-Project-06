accessing
activeLecture: aLecture

	activeLecture := aLecture.
	"It is important that the parameters are set before the code is changed"
	self parameters: aLecture parameterNames.
	self code: aLecture codeToEdit