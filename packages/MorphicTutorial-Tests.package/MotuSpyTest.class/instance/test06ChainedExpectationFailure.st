as yet unclassified
test06ChainedExpectationFailure
	|errMessage1 errMessage2| 
	
	errMessage1 := 'err1'.
	errMessage2 := 'err2'.
	
	[spy 
		expect: #position: withArgs: {100@100} errorMessage: errMessage1;
		expect: #color: withArgs: {Color green} errorMessage: errMessage2.
	self assert: false] 
		on: Error do: [:e |
			self assert: e messageText = errMessage1].
		
	