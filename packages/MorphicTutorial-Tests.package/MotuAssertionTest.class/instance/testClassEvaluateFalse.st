as yet unclassified
testClassEvaluateFalse
	|errMessage|
	
	errMessage := 'errMessage'.

	[assertion assert: Color green hasClass: Morph errMessage: errMessage.
	self assert: false]
		on: Error do: [:e | self assert: e messageText = errMessage]