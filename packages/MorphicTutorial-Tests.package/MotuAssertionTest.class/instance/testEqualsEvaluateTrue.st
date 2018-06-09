as yet unclassified
testEqualsEvaluateTrue
	|errMessage|
	
	errMessage := 'errMessage'.
	[assertion assert: Color green equals: Color green errMessage: errMessage]
		on: Error do: [:e | self assert: false]