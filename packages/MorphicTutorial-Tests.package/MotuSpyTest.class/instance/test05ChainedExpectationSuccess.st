as yet unclassified
test05ChainedExpectationSuccess
	|error|
	
	spy position: 100@100.
	spy color: Color green.
	error := spy expect: #position: withArgs: {100@100} errMessage: 'err1' onSuccess: [
			spy expect: #color: withArgs: {Color green} errMessage: 'err2' onSuccess: spy success].
	
	self assert: error isNil 