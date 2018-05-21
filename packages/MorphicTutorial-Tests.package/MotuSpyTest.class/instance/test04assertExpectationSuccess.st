as yet unclassified
test04assertExpectationSuccess
	|errMessage error success|
	
	success := false.
	errMessage := 'Position was not or wrong called'.
	
	spy position: 100@100.
	error := spy expect: #position: withArgs: {100@100} errMessage: errMessage onSuccess: [
		success := true. spy success value].
	
	self assert: success.
	self assert: error isNil 