as yet unclassified
test06ChainedExpectationFailure
	|errMessage1 errMessage2| 
	
	errMessage1 := 'err1'.
	errMessage2 := 'err2'.
	spy 
		expect: #position: withArgs: {100@100} errMessage: errMessage1;
		expect: #color: withArgs: {Color green} errMessage: errMessage2.
		
	self assert: self failMessage = errMessage1