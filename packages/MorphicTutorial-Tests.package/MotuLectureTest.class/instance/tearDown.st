as yet unclassified
tearDown
	super tearDown.
	
	(Smalltalk at: #TARTestAutoRunner)
		ifNotNil: [[Smalltalk at: #TARTestAutoRunner resumeTestAutoRunner] 
			on: Error 
			do: [:e|]]
	