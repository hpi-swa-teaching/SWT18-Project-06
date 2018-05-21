as yet unclassified
test03assertMessageInHistorie
	|errMessage|
	
	errMessage := 'Position was not or wrong called'.
	
	spy 
		expect: #position withArgs: {100@100} errMessage: errMessage.
		
	self assert: self failMessage = errMessage.