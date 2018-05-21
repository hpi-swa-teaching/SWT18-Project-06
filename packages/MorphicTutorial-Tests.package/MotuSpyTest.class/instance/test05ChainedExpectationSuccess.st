as yet unclassified
test05ChainedExpectationSuccess
	
	spy 
		position: 100@100;
		color: Color green;
		expect: #position: withArgs: {100@100} errMessage: 'err1';
		expect: #color: withArgs: {Color green} errMessage: 'err2';
		success: [] failure: [self assert: false]
	