as yet unclassified
testNotEqualsEvaluateTrue
	|errMessage|
	
	errMessage := 'errMessage'.
	[assertion assert: Color green notEquals: Color red errorMessage: errMessage]
		on: Error do: [:e | self assert: false]