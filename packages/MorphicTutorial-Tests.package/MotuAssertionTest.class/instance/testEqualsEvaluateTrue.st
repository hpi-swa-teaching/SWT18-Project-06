as yet unclassified
testEqualsEvaluateTrue

	[assertion assert: Color green equals: Color green errorMessage: errorMessage]
		on: Error do: [:e | self assert: false]