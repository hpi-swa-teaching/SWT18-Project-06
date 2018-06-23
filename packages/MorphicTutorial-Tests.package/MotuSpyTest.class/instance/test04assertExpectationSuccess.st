as yet unclassified
test04assertExpectationSuccess
	|errMessage|
	
	errMessage := 'Position was not or wrong called'.
	[spy 
		position: 100@100;
<<<<<<< HEAD
		expect: #position: withArgs: {100@100} errorMessage: errMessage.]
=======
		expect: #position: withArgs: {100@100} errMessage: errMessage.]
>>>>>>> b7c074b6d1255dc559dd7d3b21e2ac06b611eecb
		on: Error do: [:e | self assert: false].
	