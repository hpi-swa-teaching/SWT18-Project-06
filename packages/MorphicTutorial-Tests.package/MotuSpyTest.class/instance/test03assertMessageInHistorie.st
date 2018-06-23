as yet unclassified
test03assertMessageInHistorie
	|errMessage|
	
	errMessage := 'Position was not or wrong called'.
	
<<<<<<< HEAD
	[spy expect: #position withArgs: {100@100} errorMessage: errMessage.
=======
	[spy expect: #position withArgs: {100@100} errMessage: errMessage.
>>>>>>> b7c074b6d1255dc559dd7d3b21e2ac06b611eecb
	self assert: false] 
		on: Error do: [:e |
			self assert: e messageText = errMessage].
		
	