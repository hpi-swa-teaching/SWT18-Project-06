as yet unclassified
test03assertMessageInHistorie
	|errMessage|
	
	errMessage := 'Position was not or wrong called'.
	
	[spy expect: #position: withArgs: {100@100} errorMessage: errMessage.
	self assert: false] 
		on: Error do: [:e |
			self assert: e messageText = errMessage].
		
	