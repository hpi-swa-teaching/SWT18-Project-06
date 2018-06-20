as yet unclassified
testEqualsEvaluateTrue
	|errMessage|
	
	errMessage := 'errMessage'.
	[assertion assert: Color green equals: Color green errorMessage: errMessage]
		on: Error do: [:e | self assert: false]