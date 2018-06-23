as yet unclassified
test05ChainedExpectationSuccess
	
	
	[spy 
		position: 100@100;
		color: Color green;
<<<<<<< HEAD
		expect: #position: withArgs: {100@100} errorMessage: 'err1';
		expect: #color: withArgs: {Color green} errorMessage: 'err2'.]
=======
		expect: #position: withArgs: {100@100} errMessage: 'err1';
		expect: #color: withArgs: {Color green} errMessage: 'err2'.]
>>>>>>> b7c074b6d1255dc559dd7d3b21e2ac06b611eecb
		on: Error do: [:e | self assert: false]