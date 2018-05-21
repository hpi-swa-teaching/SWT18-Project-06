as yet unclassified
test04assertExpectationSuccess
	|errMessage|
	
	errMessage := 'Position was not or wrong called'.
	spy 
		position: 100@100;
		expect: #position: withArgs: {100@100} errMessage: errMessage.
	
	self assert: self failMessage isNil.
	