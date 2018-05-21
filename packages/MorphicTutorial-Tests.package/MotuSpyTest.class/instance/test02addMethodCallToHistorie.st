as yet unclassified
test02addMethodCallToHistorie
	
	self assert: spy historie size = 0.
	spy position: 100@100.
	self assert: spy historie size = 1