as yet unclassified
tearDown
	super tearDown.
	
	(Smalltalk includesKey: #TARTestAutoRunner)
		ifTrue: [[Smalltalk at: #TARTestAutoRunner resumeTestAutoRunner] 
			on: Error 
			do: [:e|]]
	