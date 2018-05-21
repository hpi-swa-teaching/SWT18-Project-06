as yet unclassified
test06
	|error errMessage|
	
	errMessage := 'Wrong Color'.
	
	spy position: 100@100.
	error := spy expect: #position: withArgs: {100@100} errMessage: 'err1' onSuccess: [
			spy expect: #color: withArgs: {Color green} errMessage: errMessage onSuccess: spy success].
	
	self assert: error = errMessage