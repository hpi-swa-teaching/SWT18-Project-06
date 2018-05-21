as yet unclassified
test03assertMessageInHistorie
	|errMessage error|
	
	errMessage := 'Position was not or wrong called'.
	
	error := spy expect: #position withArgs: {100@100}  errMessage: errMessage onSuccess: [
		self assert: false].
	
	self assert: error == errMessage