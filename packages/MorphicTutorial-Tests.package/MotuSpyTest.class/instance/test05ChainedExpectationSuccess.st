as yet unclassified
test05ChainedExpectationSuccess
	
	
	[spy 
		position: 100@100;
		color: Color green;
		expect: #position: withArgs: {100@100} errorMessage: 'err1';
		expect: #color: withArgs: {Color green} errorMessage: 'err2'.]
		on: Error do: [:e | self assert: false]