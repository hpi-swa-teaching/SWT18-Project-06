as yet unclassified
testClassEvaluatesTrue
	|errMessage|
	
	errMessage := 'errMessage'.
	[assertion assert: Color green hasClass: Color errorMessage: errMessage]
		on: Error do: [:e | self assert: false]